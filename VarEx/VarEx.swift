//
//  VarEx.swift
//  VarEx
//
//  Created by Ryo Nakano on 2015/02/09.
//  Copyright (c) 2015年 Peppermint Club. All rights reserved.
//

import UIKit

// 変数
class VarEx: UIView {
    
    // 描画時に呼ばれる
    override func drawRect(rect: CGRect) {
        // 変数の定義
        var num0: Int
        var num1: Int
        var sum: Int
        
        // 値の代入
        num0 = 100
        num1 = 200
        sum = num0 + num1
        
        // 文字列の生成
        var str: String = "合計 = \(sum)"
        
        drawString(str, x: 0, y: 20);
        println("変数sumの値 = \(sum)")
    }
    
    func drawString(str: String, x: Int, y: Int) {
        let attrs = [NSFontAttributeName: UIFont.systemFontOfSize(24)]
        let nsstr = str as NSString
        nsstr.drawAtPoint(CGPointMake(CGFloat(x), CGFloat(y)),
            withAttributes: attrs)
    }
}