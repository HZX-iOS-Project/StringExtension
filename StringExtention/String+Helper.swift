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
    public func getCharAdvance(index: Int) -> String {
        assert(index < self.count, "哦呵~ 字符串索引越界了！")
        let positionIndex = self.index(self.startIndex, offsetBy: index)
        let char = self[positionIndex]
        return String(char)
    }
    
    /// 获取字符串第一个字符
    /// - Returns: 处理后的字符串
    public func getFirstChar() -> String {
        return getCharAdvance(index: 0)
    }
    
    /// 获取字符串某个索引的字符（从后往前）
    /// - Parameter index: 索引值
    /// - Returns: 处理后的字符串
    public func getCharReverse(index: Int) -> String {
        assert(index < self.count, "哦呵~ 字符串索引越界了！")
        //在这里做了索引减1，因为endIndex获取的是 字符串最后一个字符的下一位
        let positionIndex = self.index(self.endIndex, offsetBy: -index - 1)
        let char = self[positionIndex]
        return String(char)
    }
    
    /// 获取字符串最后一个字符
    /// - Returns: 处理后的字符串
    public func getLastChar() -> String {
        return getCharReverse(index: 0)
    }
    
    /// 获取某一串字符串按索引值 （前闭后开 包含前边不包含后边）
    /// - Parameters:
    ///   - start: 开始的索引
    ///   - end: 结束的索引
    /// - Returns: 处理后的字符串
    public func getString(startIndex: Int, endIndex: Int) -> String {
        let start = self.index(self.startIndex, offsetBy: startIndex)
        let end = self.index(self.startIndex, offsetBy: endIndex)
        return String (self[start ..< end])
    }
    
    /// 获取某一串字符串按数量
    /// - Parameters:
    ///   - startIndex: 开始索引
    ///   - count: 截取个数
    /// - Returns: 处理后的字符串
    public func getString(startIndex: Int, count: Int) -> String {
        return getString(startIndex: startIndex, endIndex: startIndex + count)
    }
    
    /// 截取字符串从某个索引开始截取 包含当前索引
    /// - Parameter startIndex: 开始索引
    /// - Returns: 截取后的字符串
    public func subStringFrom(startIndex: Int) -> String {
        return getString(startIndex: startIndex, endIndex: self.count)
    }
    
    /// 截取字符串（从开始截取到想要的索引位置）不包含当前索引
    /// - Parameter endIndex: 结束索引
    /// - Returns: 截取后的字符串
    public func subStringTo(endIndex: Int) -> String {
        return getString(startIndex: 0, endIndex: endIndex)
    }
    
    /// 利用subscript 获取某个位置的字符串
    subscript(index: Int) -> String {
        let startIndex = self.index(self.startIndex, offsetBy: index)
        let endIndex = self.index(startIndex, offsetBy: 1)
        return String(self[startIndex ..< endIndex])
    }
}
