//
//  Class3ViewController.swift
//  myproject1
//
//  Created by mac on 2017/9/8.
//  Copyright © 2017年 course.IOS5.lab. All rights reserved.
//

import UIKit

class Class3ViewController: UIViewController , UICollectionViewDataSource,UICollectionViewDelegate{
        var class3Str:[String] = ["課程異動"]
        
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return class3Str.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell:UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "大學生活學習與輔導", for: indexPath)
            let myCell:Class03CollectionViewCell = cell as! Class03CollectionViewCell
            
            myCell.titleLabel.text = class3Str[indexPath.row]
            
            return cell
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        class3Str = Data.getInstance().getSubjectMessagesTitle(index: 2)

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
