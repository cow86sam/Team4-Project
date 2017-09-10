//
//  Subject.swift
//  myproject1
//
//  Created by user on 2017/9/9.
//  Copyright © 2017年 course.IOS5.lab. All rights reserved.
//

import Foundation

class Subject {
    var name:String = "科目名稱"
    var datas:[Message] = []
    
    init(name:String) {
        setName(data: name)
    }
    
    func setName(data:String) {
        self.name = data
    }
    
    func addMessage(msg:Message) {
        self.datas.append(msg)
    }
    
    func removeMessage(index:Int) {
        if self.datas.count == 0 {
            return
        } else {
            self.datas.remove(at: index)
        }
    }
    
    func getMessage(index:Int) -> (Message) {
        return self.datas[index]
    }
    
    func getMessagesTitle() -> ([String]) {
        var msgs:[String] = []
        
        print("===\(name)=== : \(datas.count)")
        if datas.count == 0 {
            return msgs
        } else {
            for index in 0...datas.count - 1 {
                msgs.append(datas[index].title)
                print("msgs \(index) = \(msgs[msgs.count - 1]) \n \(datas[index].data)")
            }
            return msgs
        }
    }
    
}
