//
//  DepartmentVc.swift
//  Ma5dom
//
//  Created by deepo on 2/8/21.
//  Copyright © 2021 deepo. All rights reserved.
//

import UIKit

class DepartmentVc: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   
    let items :[String] = ["one"]
    let imageArray :[String] = ["img","img-1","img-2","img-3","img-4","img-5","img-6","img-7","img-8","img-9","img-10"]
    @IBOutlet weak var departmentitems: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
setup()
        
    }
    func setup()
    {
        departmentitems.register(UINib(nibName: "DepartmenCell", bundle: nil), forCellWithReuseIdentifier: "DepartmenCell")
        departmentitems.delegate = self
        departmentitems.dataSource = self
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = departmentitems.dequeueReusableCell(withReuseIdentifier: "DepartmenCell", for: indexPath) as! DepartmenCell
        cell.imagedep.image = UIImage(named: imageArray[indexPath.row])
        cell.depname.text = "Wait US"
        return cell
       }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: ((UIScreen.main.bounds.width)/2)-10, height: 230)
    }
       
    
    @IBAction func backtoHome(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
