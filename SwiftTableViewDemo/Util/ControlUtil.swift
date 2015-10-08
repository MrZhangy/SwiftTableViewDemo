//
//  ControlUtil.swift
//  SwiftTableViewDemo
//
//  Created by 张亚丰 on 15/7/20.
//  Copyright (c) 2015年 zhangyafeng. All rights reserved.
//

import UIKit

class ControlUtil: NSObject {
   //创建一个自动换行的UILabel
    
    func createAutoWrapLabelWithFrame(frame:CGRect,text:String,font:UIFont) ->UILabel {
        var label:UILabel = UILabel(frame: frame)
        label.lineBreakMode = NSLineBreakMode.ByWordWrapping
        label.font = font
        label.text = text
        label.numberOfLines = 0
        
        label.sizeToFit()
        
        return label
    }
}
