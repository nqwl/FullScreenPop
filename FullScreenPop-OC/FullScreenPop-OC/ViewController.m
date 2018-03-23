//
//  ViewController.m
//  FullScreenPop-OC
//
//  Created by 亲点 on 2018/3/23.
//  Copyright © 2018年 陈辉. All rights reserved.
//

#import "ViewController.h"
#import "PopedViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"首页";
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 40)];
    label.text = @"点击屏幕跳转下一个页面\n然后感受全屏pop手势";
    label.numberOfLines = 0;
    label.textColor = [UIColor blackColor];
    label.font = [UIFont systemFontOfSize:14];
    [self.view addSubview:label];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    PopedViewController *vc = [PopedViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
