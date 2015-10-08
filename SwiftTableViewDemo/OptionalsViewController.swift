//
//  OptionalsViewController.swift
//  SwiftTableViewDemo
//
//  Created by 张亚丰 on 15/7/20.
//  Copyright (c) 2015年 zhangyafeng. All rights reserved.
//

import UIKit

class OptionalsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.whiteColor()
        
        let label = ControlUtil().createAutoWrapLabelWithFrame(CGRectMake(10, 68, self.view.frame.size.width - 20, 0), text: "Swift 的可选可以让你暗示任意 类型的值缺失,并不需要一个特殊值 \n\n oc中的nil只对对象起作用，结构体用NSNotFound来暗示值缺失\n\n 一个可选的 Int 被写作 Int?而不是 Int。", font: UIFont.systemFontOfSize(16))
        self.view.addSubview(label)
        
        //返回一个可选的(optional)Int,而不是一个 Int。一个可选的 Int 被写作 Int?而不是 Int。
       let value = "dfdsf".toInt()
        println("\(value)")
        
        //if 语句以及强制解析
        //你可以使用 if 语句来判断一个可选是否包含值。如果可选有值,结果是 true;如果没有值,结果是 false。
        
        //当你确定可选包确实含值之后,你可以在可选的名字后面加一个感叹号(!)来获取值。这个惊叹号表示“我知道这个可选有值,请使用它。”这被称为可选值的强制解析(forcedunwrapping):
        
        //注意:使用!来获取一个不存在的可选值会导致运行时错误。使用!来强制解析值之前,一 定要确定可选包含一个非 nil 的值。
        if (value != nil) {
             println("\(value) has an integer value of \(value!)")
        } else {
             println("\(value) could not be converted to an integer")
        }
        
        
        
        //可选绑定
        
        //使用可选绑定(optional binding)来判断可选是否包含值,如果包含就把值赋给一个临时常量或者变量。可选绑定可以用在 if 和 while 语句中来对可选的值进行判断并把值赋给一 个常量或者变量
        if let linshiValue = value {
            println("\(linshiValue)")
        }
        
        
        
        //注意:nil 不能用于非可选的常量和变量。如果你的代码中有常量或者变量需要处理值缺失 的情况,请把它们声明成对应的可选类型。
        //如果你声明一个可选常量或者变量但是没有赋值,它们会自动被设置为 nil:
        
        //注意:Swift 的 nil 和 Objective-C 中的 nil 并不一样。在 Objective-C 中,nil 是一个指向 不存在对象的指针。在 Swift 中,nil 不是指针——它是一个确定的值,用来表示值缺失。任何类型的可选都可以被设置为 nil,不只是对象类型。
        var serverResponseCode: Int? = nil
        
        
        //隐式解析可选
        
        //有时候在程序架构中,第一次被赋值之后,可以确定一个可选总会有值。在这种情况下,每次都要判断和解析可选值是非常低效的,因为可以确定它总会有值。 这种类型的可选被定义为隐式解析可选(implicitly unwrapped optionals)
        //把想要用作可 选的类型的后面的问号(String?)改成感叹号(String!)来声明一个隐式解析可选
        
        let possibleString2: String? = "An optional string."
        println(possibleString2)
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
