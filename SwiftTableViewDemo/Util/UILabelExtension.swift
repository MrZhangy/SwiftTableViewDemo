//
//  UILabelExtension.swift
//  SwiftTableViewDemo
//
//  Created by 张亚丰 on 15/7/20.
//  Copyright (c) 2015年 zhangyafeng. All rights reserved.
//

import UIKit

//UILabel 扩展
extension UILabel {
    func setSizeFont (sizeFont: CGFloat) {
        self.font =  UIFont(name: self.font.fontName, size: sizeFont)!
        self.sizeToFit()
    }
}
