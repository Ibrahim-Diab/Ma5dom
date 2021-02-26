//
//  CollectionViewItemsCell.swift
//  Ma5dom
//
//  Created by deepo on 2/3/21.
//  Copyright © 2021 deepo. All rights reserved.
//

import UIKit

class CollectionViewItemsCell: UICollectionViewCell {
    
    
    static let identifier = "CollectionViewItemsCell"
    @IBOutlet weak var imageitems: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imageitems.contentMode = .scaleAspectFit
    }
    
}
