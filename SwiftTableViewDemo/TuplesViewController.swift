//
//  TuplesViewController.swift
//  SwiftTableViewDemo
//
//  Created by 张亚丰 on 15/7/20.
//  Copyright (c) 2015年 zhangyafeng. All rights reserved.
//

import UIKit

class TuplesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        
        
      let label  = ControlUtil().createAutoWrapLabelWithFrame(CGRectMake(10, 68, self.view.frame.size.width - 20, 0), text: "元组(tuples)把多个值组合成一个复合值。元组内的值可以使任意类型,并不要求是相 同类型。\n\n 大括号（）中添加类型\n \n 注意:元组在临时组织值的时候很有用,但是并不适合创建复杂的数据结构。如果你的数据结构并不是临时使用,请使用类或者结构体而不是元组。请参考类和结构体。", font: UIFont.systemFontOfSize(16))
        self.view.addSubview(label)
        
        let http404Error = (404,"Not Found")
        
        
        //你可以将一个元组的内容分解(decompose)成单独的常量和变量,然后你就可以正常使用它们了:
        let (statusCode, statusMessage) = http404Error
        println("The status code is \(statusCode)")
        println("The status message is \(statusMessage)")
        
        //如果你只需要一部分元组值,分解的时候可以把要忽略的部分用下划线(_)标记:
        let (justTheStatusCode, _) = http404Error
       println("The status code is \(justTheStatusCode)")
        
//        你还可以通过下标来访问元组中的单个元素,下标从零开始:
        println("The status code is \(http404Error.0)")
        println("The status message is \(http404Error.1)")
        
        
        //你可以在定义元组的时候给单个元素命名:
        let http200Status = (statusCode: 200, description: "OK")
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
