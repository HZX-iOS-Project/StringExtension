//
//  String+Helper.swift
//  TestDemo
//
//  Created by 侯仲祥 on 2020/4/6.
//  Copyright © 2020 houZhongXiang. All rights reserved.
//

import Foundation

// MARK: 获取字符串中一段字符串的相关操作
extension String {
    /// 获取字符串某个索引的字符（从前往后）
    /// - Parameter index: 索引值 是从0开始算的
    /// - Returns: 处理后的字符串
    func getCharAdvance(index: Int) -> String {
        assert(index < self.count, "哦呵~ 字符串索引越界了！")
        let positionIndex = self.index(self.startIndex, offsetBy: index)
        let char = self[positionIndex]
        return String(char)
    }
    
    /// 获取字符串第一个字符
    /// - Returns: 处理后的字符串
    func getFirstChar() -> String {
        return getCharAdvance(index: 0)
    }
    
    
    /// 获取字符串某个索引的字符（从后往前）
    /// - Parameter index: 索引值
    /// - Returns: 处理后的字符串
    func getCharReverse(index: Int) -> String {
        assert(index < self.count, "哦呵~ 字符串索引越界了！")
        //在这里做了索引减1，因为endIndex获取的是 字符串最后一个字符的下一位
        let positionIndex = self.index(self.endIndex, offsetBy: -index - 1)
        let char = self[positionIndex]
        return String(char)
    }
    
    /// 获取字符串最后一个字符
    /// - Returns: 处理后的字符串
    func getLastChar() -> String {
        return getCharReverse(index: 0)
    }
    
    /// 获取某一串字符串按索引值
    /// - Parameters:
    ///   - start: 开始的索引
    ///   - end: 结束的索引
    /// - Returns: 处理后的字符串
    func getString(startIndex: Int, endIndex: Int) -> String {
        let start = self.index(self.startIndex, offsetBy: startIndex)
        let end = self.index(self.startIndex, offsetBy: endIndex)
        return String (self[start ... end])
    }
    
    /// 获取某一串字符串按数量
    /// - Parameters:
    ///   - startIndex: 开始索引
    ///   - count: 截取个数
    /// - Returns: 处理后的字符串
    func getString(startIndex: Int, count: Int) -> String {
        return getString(startIndex: startIndex, endIndex: startIndex + count - 1)
    }
    
    /// 截取字符串从某个索引开始截取
    /// - Parameter startIndex: 开始索引
    /// - Returns: 截取后的字符串
    func subStringFrom(startIndex: Int) -> String {
        return getString(startIndex: startIndex, endIndex: self.count - 1)
    }
    
    /// 截取字符串（从开始截取到想要的索引位置）
    /// - Parameter endIndex: 结束索引
    /// - Returns: 截取后的字符串
    func subStringTo(endIndex: Int) -> String {
        return getString(startIndex: 0, endIndex: endIndex)
    }
    
    
    
}
