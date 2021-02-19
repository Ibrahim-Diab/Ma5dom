//
//  CollectionTableViewCell.swift
//  Ma5dom
//
//  Created by deepo on 2/3/21.
//  Copyright © 2021 deepo. All rights reserved.
//

import UIKit

class CollectionTableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    static let identifier = "CollectionTableViewCell"
    
    var tableviewsecion:Int = 0
    let items1 = [ "f1","f2","f1","f2"]
    let items2 = ["s1","s2","s1","s2"]
    let departmentphoto = [ "icon", "icon-1", "icon-2","icon-3", "icon-4", "icon-5" ,"icon-6", "icon-7" ,"icon-7", "icon-8" ,"icon-9" ,"icon-10"]
    @IBOutlet weak var collectionitems: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionitems.register(UINib(nibName: "CollectionViewItemsCell", bundle: nil), forCellWithReuseIdentifier: CollectionViewItemsCell.identifier)
        collectionitems.register(UINib(nibName: "DepartMentCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "department")
        collectionitems.delegate = self
        collectionitems.dataSource = self
        collectionitems.reloadData()
        
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if section == 0
        {
            return departmentphoto.count
        }
        if section == 1
        {
            return items1.count
        }
        if section == 2
        {
            return items2.count
        }
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if tableviewsecion == 0
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "department", for: indexPath) as! DepartMentCollectionViewCell
            collectionView.transform = CGAffineTransform(scaleX:-1,y: 1);
            cell.transform = CGAffineTransform(scaleX:-1,y: 1);
            cell.imagedepartment.image =  UIImage(named: departmentphoto[indexPath.row])
            cell.departmentname.text = "اسم القسم"
            return cell
            
        }
        if tableviewsecion == 1
        {
            let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewItemsCell", for: indexPath) as! CollectionViewItemsCell
            cell.transform = CGAffineTransform(scaleX:-1,y: 1);
            collectionView.transform = CGAffineTransform(scaleX:-1,y: 1);
            cell.configrecell(image: items1[indexPath.row])
            return cell
        }
        if tableviewsecion == 2 {
            let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewItemsCell", for: indexPath) as! CollectionViewItemsCell
            cell.transform = CGAffineTransform(scaleX:-1,y: 1);
            collectionView.transform = CGAffineTransform(scaleX:-1,y: 1);
            cell.configrecell(image: items2[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
        
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       
        if indexPath.section == 0
        {
            return CGSize(width: 100, height: 150)
        }
            return CGSize(width:157, height: 250)
    }
    
    
    
}

