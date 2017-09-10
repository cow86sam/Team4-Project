//
//  ViewController.swift
//  myproject1
//
//  Created by mac on 2017/9/8.
//  Copyright © 2017年 course.IOS5.lab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var class07Button: UIButton!
    @IBOutlet weak var class08Button: UIButton!
    @IBOutlet weak var class09Button: UIButton!
    @IBOutlet weak var class10Button: UIButton!
    @IBOutlet weak var class12Button: UIButton!
    @IBOutlet weak var class11Button: UIButton!
    
//    var firstSememster = true
//    func setSememster(){
//        if firstSememster == false {
//            class07Button.isHidden == false
//            class08Button.isHidden == false
//            class09Button.isHidden == false
//            class10Button.isHidden == false
//            class11Button.isHidden == false
//            class12Button.isHidden == false
//        }
//        return
//
//    }
    
    
   
    
    override func viewDidLoad() {
        if class07Button.isHidden == false {
            class07Button.isHidden = true
        }
        if class08Button.isHidden == false {
            class08Button.isHidden = true
        }
        if class09Button.isHidden == false {
            class09Button.isHidden = true
        }
        if class10Button.isHidden == false {
            class10Button.isHidden = true
        }
        if class11Button.isHidden == false {
            class11Button.isHidden = true
        }
        if class12Button.isHidden == false {
            class12Button.isHidden = true
        }
        
        super.viewDidLoad()
        Data.getInstance().getSubjectsName()
        Data.getInstance().getSubjectMessagesTitle(index: 0) 
//        self.navigationController?.hidesBottomBarWhenPushed = true
      //  self.tabBarController?.hidesBottomBarWhenPushed = true
        

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    

}

}
