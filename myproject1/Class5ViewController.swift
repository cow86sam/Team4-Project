//
//  Class5ViewController.swift
//  myproject1
//
//  Created by mac on 2017/9/8.
//  Copyright © 2017年 course.IOS5.lab. All rights reserved.
//

import UIKit

class Class5ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    var class5Str:[String] = ["想不到拉"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return class5Str.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "中醫概論", for: indexPath)
        let myCell:Class05CollectionViewCell = cell as! Class05CollectionViewCell
        
        myCell.titleLabel.text = class5Str[indexPath.row]
        
        return cell
    } 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        class5Str = Data.getInstance().getSubjectMessagesTitle(index: 4)

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
