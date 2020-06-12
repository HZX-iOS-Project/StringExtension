//
//  ViewController.swift
//  StringExtention
//
//  Created by 侯仲祥 on 2020/4/6.
//  Copyright © 2020 houZhongXiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let helloSwift = "Hello, Swift"
        
        ///获取第一个字符
        print("第一个字符是：" + helloSwift.getFirstChar())
        
        ///获取从前往后索引是10的字符
        print("索引是10的字符是：" + helloSwift.getCharAdvance(index: 10))
        
        ///最后一个字符
        print("最后一个字符是：" + helloSwift.getLastChar())
        
        ///倒数索引是1的字符
        print("倒数索引是1的字符：" + helloSwift.getCharReverse(index: 1))
        
        ///获取索引从2到4的字符串
        print("索引从2到4的字符串：" + helloSwift.getString(startIndex: 2, endIndex: 4))
        
        ///获取从索引为2之后3个字符串
        print("从索引为2之后3个字符串：" + helloSwift.getString(startIndex: 2, count: 3))
        
        ///获取索引为3之后的字符串
        print("索引为3之后的字符串：" + helloSwift.subStringFrom(startIndex: 3))
        
        ///从开始位置截取到索引为3的地方停止
        print("截取到索引为3的地方的字符串：" + helloSwift.subStringTo(endIndex: 3))
        
        ///获取前三个字符 这个方法不是扩展方法
        print("前三个字符串是：" + helloSwift.prefix(3))
        
        ///获取后三个字符 这个方法不是扩展方法
        print("前三个字符串是：" + helloSwift.suffix(3))
        
        
    }


}

