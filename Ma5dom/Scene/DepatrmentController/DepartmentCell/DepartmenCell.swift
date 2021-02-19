//
//  DepartmenCell.swift
//  Ma5dom
//
//  Created by deepo on 2/8/21.
//  Copyright © 2021 deepo. All rights reserved.
//

import UIKit

class DepartmenCell: UICollectionViewCell {
    @IBOutlet weak var imagedep: UIImageView!
    @IBOutlet weak var depname: UILabel!
    @IBOutlet weak var viewofcell: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imagedep.contentMode = .scaleAspectFit
     //   viewofcell.layer.masksToBounds = false
    }
    

}
