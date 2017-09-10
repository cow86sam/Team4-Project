//
//  Class1ViewController.swift
//  myproject1
//
//  Created by mac on 2017/9/8.
//  Copyright © 2017年 course.IOS5.lab. All rights reserved.
//

import UIKit

class Class1ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    var iteams:[String] = ["課程異動",]

    @IBOutlet weak var collectionView: UICollectionView!
    //@IBOutlet weak var collectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return iteams.count
    }

//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        print("indexPath=\(indexPath)")
//
//        let cell:UICollectionViewCell = collectionView.cellForItem(at: indexPath)!
//
//    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("indexPath=\(indexPath.row)")
        Data.getInstance().subjectNow = 0
        Data.getInstance().messageNow = indexPath.row
        
        let vc:TextView01TexViewController = self.storyboard?.instantiateViewController(withIdentifier: "PinkVC") as! TextView01TexViewController
        self.navigationController?.pushViewController(vc, animated:true)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "上課通知", for: indexPath)
        
        let mycell:Class01CollectionViewCell = cell as! Class01CollectionViewCell

        let blue = UIImage(named:"blueMessage")
        let red = UIImage(named:"redMessage")
        let orange = UIImage(named:"orangeMessage")
        let green = UIImage(named:"greenMessage")
        let black = UIImage(named:"blackMessage")
        let yellow = UIImage(named:"yelloMessage")
        
        var kind = 7
        var color:UIImage?
        
        if kind == 0 {
            color = blue!
        }else if kind == 1 {
            color = red!
        }else if kind == 2 {
            color = orange!
        }else if kind == 3 {
            color = green!
        }else if kind == 4 {
            color = black!
        }else   {
            color = yellow!
        }
        
        mycell.myImage.image = color
        
        
        mycell.titleLabel.text = iteams[indexPath.row]
        return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("===viewDidAppear===")
        
        super.viewDidAppear(animated)
        iteams = Data.getInstance().getSubjectMessagesTitle(index: 0)
        collectionView.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        iteams = Data.getInstance().getSubjectMessagesTitle(index: 0)
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
