//
//  LaunchCollectionViewCell.swift
//  Ma5dom
//
//  Created by deepo on 2/14/21.
//  Copyright © 2021 deepo. All rights reserved.
//

import UIKit

class LaunchCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageLaunch: UIImageView!
    @IBOutlet weak var FirstText: UILabel!
    @IBOutlet weak var SecondText: UILabel!
    @IBOutlet weak var currentcell: UIPageControl!
    @IBOutlet weak var skipall: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func configcell(image:String,firsttext:String,sndtext:String)
    {
        imageLaunch.image = UIImage(named: image)
         FirstText.text = firsttext
         SecondText.text = sndtext
      
        
    }
  
   
    
}
