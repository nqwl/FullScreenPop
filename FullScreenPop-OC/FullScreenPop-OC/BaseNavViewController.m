//
//  BaseNavViewController.m
//  FullScreenPop-OC
//
//  Created by 亲点 on 2018/3/23.
//  Copyright © 2018年 陈辉. All rights reserved.
//

#import "BaseNavViewController.h"
#import <objc/runtime.h>
@interface BaseNavViewController ()

@end

@implementation BaseNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UInt32 count = 0;
    Ivar *ivars = class_copyIvarList(NSClassFromString(@"UIGestureRecognizer"), &count);
    for (int i = 0; i < count; i++){
        Ivar ivar = ivars[i];
        const char *ivarName = ivar_getName(ivar);
        NSString *ivarNameCode = [NSString stringWithUTF8String:ivarName];
        NSLog(@"%@",ivarNameCode);
    }
    free(ivars);

    NSArray *targets = [self.interactivePopGestureRecognizer valueForKey:@"_targets"];
    NSLog(@"%@",targets[0]);
//    id target = [[targets[0] valueForKey:@"target"];
    SEL sel = NSSelectorFromString(@"handleNavigationTransition:");
    UIPanGestureRecognizer *panGes = [[UIPanGestureRecognizer alloc] initWithTarget:[targets[0] valueForKey:@"target"] action:sel];
    [self.view addGestureRecognizer:panGes];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
