//
//  DepartMentCollectionViewCell.swift
//  Ma5dom
//
//  Created by deepo on 2/2/21.
//  Copyright © 2021 deepo. All rights reserved.
//

import UIKit

class DepartMentCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var viewimage: UIView!
    @IBOutlet weak var departmentname: UILabel!
    
    @IBOutlet weak var imagedepartment: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        imagedepartment.contentMode = .scaleAspectFit
        
        
    }
    
}
