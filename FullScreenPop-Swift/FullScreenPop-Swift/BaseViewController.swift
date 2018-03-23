//
//  BaseViewController.swift
//  FullScreenPopGesture
//
//  Created by 亲点 on 2018/3/23.
//  Copyright © 2018年 陈辉. All rights reserved.
//

import UIKit

class BaseViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //        var count : UInt32 = 0
        //        let ivas = class_copyIvarList(UIGestureRecognizer.self, &count)!
        //        for i in 0..<count {
        //            let nameP = ivar_getName(ivas[Int(i)])!
        //            let name = String.init(cString: nameP)
        //            print(name)
        //        }
        guard  let  targets = interactivePopGestureRecognizer?.value(forKey: "_targets") as? [NSObject] else { return }
        let targetObj = targets[0]
        print(targetObj)
        let target = targetObj.value(forKey: "target")
        let action = Selector(("handleNavigationTransition:"))
        let panGes = UIPanGestureRecognizer.init(target: target , action:action)
        view.addGestureRecognizer(panGes)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
