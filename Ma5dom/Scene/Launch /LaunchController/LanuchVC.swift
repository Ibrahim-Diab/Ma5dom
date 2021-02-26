//
//  LanuchVC.swift
//  Ma5dom
//
//  Created by deepo on 2/13/21.
//  Copyright © 2021 deepo. All rights reserved.
//

import UIKit

class LanuchVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    @IBOutlet weak var LaunchCollectionView: UICollectionView!
    
    @IBOutlet weak var skipbutton: UIButton!
    @IBOutlet weak var pagecontrol: UIPageControl!
    var time:Timer?
    var currentindex = 0
    
    
    var arr = [0,1,2]
    let startimage = ["step1","step2","step3"]
    let text1 = ["ابحث عن المطاعم والمتاجر ","شاهد العروض والتخفيضات","أنتظر طلبك"]
    let text2 = ["شاهد أحدث وأكبر الخصومات  مع تطبيق  مخدوم","we are family","AhmedAtalla ❤️ ....."]
    override func viewDidLoad() {
        super.viewDidLoad()
        LaunchCollectionView.register(UINib(nibName: "LaunchCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "lcell")
        LaunchCollectionView.delegate = self
        LaunchCollectionView.dataSource = self
        time = Timer.scheduledTimer(timeInterval: 2.5, target: self, selector: #selector(moveonTime), userInfo: nil, repeats: true)
        skipbutton.addTarget(self, action: #selector(skipallscreen), for: .touchUpInside)
        //     pagecontrol.currentPage = 0
        
        
        // Do any additional setup after loading the view.
    }
    @objc func skipallscreen()
    {
        let dest = SigninVC()
        dest.modalPresentationStyle = .fullScreen
        present(dest, animated: true, completion: nil)
        
    }
    @objc func moveonTime()
    {
        
        
       // print(currentindex)
        if currentindex < startimage.count-1
        {
            currentindex = currentindex+1
        }
        else
        {
            currentindex = 0
//            weak var pvc = self.presentingViewController
//            dismiss(animated: true) {
//                pvc?.present(TabbarController(), animated: true, completion: nil)
//         }
            
        }
        LaunchCollectionView.scrollToItem(at: IndexPath(item: currentindex, section: 0), at:.centeredHorizontally, animated: true)
   
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "lcell", for: indexPath) as! LaunchCollectionViewCell
        cell.configcell(image: startimage[indexPath.row], firsttext: text1[indexPath.row], sndtext: text2[indexPath.row])
        print("index in cell \(indexPath.row)")
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        print("index in func \(indexPath.row)")
        self.pagecontrol.currentPage = indexPath.row
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width ,height: collectionView.frame.height-40)
    }
    
    
}
