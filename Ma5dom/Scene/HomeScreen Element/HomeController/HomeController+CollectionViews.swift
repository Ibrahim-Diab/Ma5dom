//
//  HeaderCollectionView.swift
//  Ma5dom
//
//  Created by deepo on 2/1/21.
//  Copyright © 2021 deepo. All rights reserved.
//

import UIKit

extension HomeController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func SetUpHomeController()
    {
        // HeaderViewShape and collectionViewHeader and timercontrol
        TopView.roundCorners([.bottomRight,.bottomLeft], radius: 15)
        CollectionViewHeader.delegate = self
        CollectionViewHeader.dataSource = self
        CollectionViewHeader.register(UINib(nibName: "HeaderCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "Head")
        time = Timer.scheduledTimer(timeInterval: 2.5, target: self, selector: #selector(moveonTime), userInfo: nil, repeats: true)
           pagecontrol.numberOfPages = photo.count
        
        // department collectionview
        // i change it
        
        // searchBar shape
        SearchBar.layer.cornerRadius = 20
        SearchBar.clipsToBounds = true
        SearchBar.layer.borderWidth = 1
        SearchBar.layer.borderColor = #colorLiteral(red: 0.2117647059, green: 0.6117647059, blue: 0.6980392157, alpha: 1)
        
        
    }
    
    // func to scheduledTimer in collectionView
    @objc func moveonTime()
    {
        if currentindexphoto < photo.count-1
        {
            currentindexphoto = currentindexphoto+1
        }
        else
        {
            currentindexphoto = 0
        }
        CollectionViewHeader.scrollToItem(at: IndexPath(item: currentindexphoto, section: 0), at:.centeredHorizontally, animated: true)
       
    }
    
    
    // CollectionView  Header and department control
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photo.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = CollectionViewHeader.dequeueReusableCell(withReuseIdentifier: "Head", for: indexPath) as! HeaderCollectionViewCell
        cell.ImageHead.image = UIImage(named: photo[indexPath.row])
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        self.pagecontrol.currentPage = indexPath.row
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
}
