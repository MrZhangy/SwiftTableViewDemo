//
//  StringUtil.swift
//  SwiftTableViewDemo
//
//  Created by 张亚丰 on 15/7/20.
//  Copyright (c) 2015年 zhangyafeng. All rights reserved.
//

import UIKit

class StringUtil: NSObject {
   
    //计算text的高度
    func heightForView(text: String, font: UIFont, width:CGFloat) -> CGFloat {
        var label:UILabel = UILabel(frame: CGRectMake(0, 0, width, CGFloat.max))
        label.numberOfLines = 0
        label.font = font
        label.text = text
        
        //自动适应内容
        label.sizeToFit()
        
        return label.frame.size.height
    }
    
}
