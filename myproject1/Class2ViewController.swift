//
//  Class2ViewController.swift
//  myproject1
//
//  Created by mac on 2017/9/8.
//  Copyright © 2017年 course.IOS5.lab. All rights reserved.
//

import UIKit

class Class2ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    var items:[String] = ["1","2","3","4","5","6","7","8"]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
          return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "test02", for: indexPath)
        let myCell:Class02CollectionViewCell = cell as! Class02CollectionViewCell
        
        myCell.titleLabel.text = items[indexPath.row]
        
        return cell
    }
    
    

    
    
    

    

    override func viewDidLoad() {
        super.viewDidLoad()

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