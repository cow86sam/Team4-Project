//
//  Data.swift
//  myproject1
//
//  Created by user on 2017/9/9.
//  Copyright © 2017年 course.IOS5.lab. All rights reserved.
//

import Foundation

class Data {
    private static var mInstance:Data?
    static func getInstance() -> Data {
        if mInstance == nil {
            mInstance = Data()
            
        }
        return mInstance!
    }
    
    var data:String = ""
    
    func setData(data:String) {
        self.data = data
    }
    
    func getData() -> (String) {
        return self.data
    }
    
    var subjects:[Subject] = []
    
    init() {
        createDefaultData()
    }
    
    func createDefaultData() {
        var subject:Subject
        var message:Message
        
        subject = Subject(name: "中階油畫I") // 1
        addSubject(sub: subject)
        message = Message(title: "作業")
        message.setData(data: "交三張草圖+上禮拜作品完成\n帶來檢討到晚上9點。")
        subject.addMessage(msg: message)
        subject.getMessagesTitle()
        
        subject = Subject(name: "視覺經驗") // 2
        addSubject(sub: subject)
        message = Message(title: "報告")
        message.setData(data: "報告自己衣櫃裡的衣物。")
        subject.addMessage(msg: message)
        subject.getMessagesTitle()
        
        subject = Subject(name: "大學生活學習與輔導") // 3
        addSubject(sub: subject)
        message = Message(title: "其他")
        message.setData(data: "下禮拜要來班會喔~有披薩吃喔。")
        subject.addMessage(msg: message)
        message = Message(title: "其他")
        message.setData(data: "下禮拜要來班會喔~有肯X雞吃喔。")
        subject.addMessage(msg: message)
        subject.getMessagesTitle()
        
        subject = Subject(name: "創意設計") // 4
        addSubject(sub: subject)
        message = Message(title: "停課")
        message.setData(data: "下禮拜逢老師回家過節所以停課一次。")
        subject.addMessage(msg: message)
        message = Message(title: "作業")
        message.setData(data: "下禮拜包裝設計結案。")
        subject.addMessage(msg: message)
        subject.getMessagesTitle()
        
        subject = Subject(name: "中醫概論") // 5
        addSubject(sub: subject)
        message = Message(title: "考試")
        message.setData(data: "下禮拜要考人體全身穴道分布位置，要記熟。")
        subject.addMessage(msg: message)
        subject.getMessagesTitle()
        
        subject = Subject(name: "錄像文化與批評") // 6
        addSubject(sub: subject)
        message = Message(title: "繳費")
        message.setData(data: "還未交書本費1500元的同學請快點繳交。")
        subject.addMessage(msg: message)
        subject.getMessagesTitle()
        
        subject = Subject(name: "影像藝術與歷史批評")
        addSubject(sub: subject)
        message = Message(title: "停課")
        message.setData(data: "因老師要出國研習2年，所以停課到老師回國。")
        subject.addMessage(msg: message)
        subject.getMessagesTitle()
        
        subject = Subject(name: "藝術社會學")
        addSubject(sub: subject)
        message = Message(title: "作業")
        message.setData(data: "拍佛洛伊德影片，至少10分鐘。")
        subject.addMessage(msg: message)
        subject.getMessagesTitle()
        
        subject = Subject(name: "在地古蹟與文化")
        addSubject(sub: subject)
        message = Message(title: "報告")
        message.setData(data: "下禮拜小組上台報告台灣所有的古蹟文化。")
        subject.addMessage(msg: message)
        subject.getMessagesTitle()

     }
    
    func addSubject(sub:Subject) {
        self.subjects.append(sub)
    }
    
    func getSubjectsName() -> ([String]) {
        var subs:[String] = []
        for index in 0...(subjects.count - 1) {
            subs.append(subjects[index].name)
            print("sub \(index) = \(subs[subs.count - 1])")
        }

        return subs
    }
    
    func getSubjectMessagesTitle(index:Int) -> ([String]) {
        let sub:Subject = subjects[index]
        let msgs:[String] = sub.getMessagesTitle()

        return msgs
    }
    
    func getSubjects() -> ([Subject]) {
        return subjects
    }
    
}
