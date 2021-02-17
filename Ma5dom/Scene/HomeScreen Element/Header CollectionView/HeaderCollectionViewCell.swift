//
//  HeaderCollectionViewCell.swift
//  Ma5dom
//
//  Created by deepo on 1/31/21.
//  Copyright © 2021 deepo. All rights reserved.
//

import UIKit

class HeaderCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var ImageHead: UIImageView!
    @IBOutlet weak var pagecontrol: UIPageControl!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //   ImageHead.layer.borderColor = UIColor.black as! CGColor
        ImageHead.layer.borderWidth = 1.5
        ImageHead.layer.borderColor = UIColor.black.cgColor
        ImageHead.clipsToBounds = true
        pagecontrol.numberOfPages = 8
    }
    
}
