//
//  TypeAliasesViewController.swift
//  SwiftTableViewDemo
//
//  Created by 张亚丰 on 15/7/20.
//  Copyright (c) 2015年 zhangyafeng. All rights reserved.
//

import UIKit

typealias AudioSample = UInt16

class TypeAliasesViewController: UIViewController {

    var maxAmplitudeFound = AudioSample.min
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.whiteColor()
        println("\(maxAmplitudeFound)")
        
        
        //创建一个label
//        CGRect frame = 
         let label = ControlUtil().createAutoWrapLabelWithFrame(CGRectMake(5, 64, self.view.frame.size.width - 10, 500), text: "类型别名(type aliases)就是给现有类型定义另一个名字。你可以使用 typealias 关键字来定 义类型别名。", font: UIFont.systemFontOfSize(16))
        self.view.addSubview(label)
        
        
//        var label = UILabel(frame: )
//        label.text = "类型别名(type aliases)就是给现有类型定义另一个名字。你可以使用 typealias 关键字来定 义类型别名。"
//        label.textColor = UIColor.redColor()
//        label.textAlignment = NSTextAlignment.Left
//        label.font = UIFont.systemFontOfSize(16)
//        label.numberOfLines = 0
//        label.sizeToFit()
//        self.view.addSubview(label)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
