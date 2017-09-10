//
//  Class6ViewController.swift
//  myproject1
//
//  Created by mac on 2017/9/8.
//  Copyright © 2017年 course.IOS5.lab. All rights reserved.
//

import UIKit

class Class6ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    var class6Str:[String] = ["ＵＩ加油好嗎"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return class6Str.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "錄像文化與批評", for: indexPath)
        let myCell:Class06CollectionViewCell = cell as! Class06CollectionViewCell
        let blue = UIImage(named:"blueMessage")
        let red = UIImage(named:"redMessage")
        let orange = UIImage(named:"orangeMessage")
        let green = UIImage(named:"greenMessage")
        let black = UIImage(named:"blackMessage")
        
        
        myCell.titleLabel.text = class6Str[indexPath.row]
        
        return cell
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
 class6Str = Data.getInstance().getSubjectMessagesTitle(index: 5) 
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
