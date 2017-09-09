//
//  Message.swift
//  myproject1
//
//  Created by user on 2017/9/9.
//  Copyright © 2017年 course.IOS5.lab. All rights reserved.
//

import Foundation

struct Message {
    var title:String = ""
    var kind:Int = 0
    var data:String = ""
    var time:Int = 0
    var owner:String = ""
    var reader:[String] = []
    
    init(title:String) {
        setTitle(data: "\(title)")
    }
    
    mutating func setTitle(data:String) {
        self.title = data
    }
    
    mutating func setKind(data:Int) {
        self.kind = data
    }
    
    mutating func setData(data:String) {
        self.data = data
    }
    
    mutating func setTIME(data:Int) {
        self.time = data
    }
    
    mutating func setOwner(data:String) {
        self.owner = data
    }
    
    mutating func setReader(data:[String]) {
        self.reader = data
    }
    
}
