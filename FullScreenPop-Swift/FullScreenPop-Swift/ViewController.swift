//
//  ViewController.swift
//  FullScreenPop-Swift
//
//  Created by 亲点 on 2018/3/23.
//  Copyright © 2018年 陈辉. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "首页"
        let label  = UILabel.init(frame: CGRect.init(x: 100, y: 100, width: 200, height: 40))
        label.text = "点击屏幕跳转下一个页面\n然后感受全屏pop手势"
        label.textColor = UIColor.black
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 14)
        view.addSubview(label)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc = PopedViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

