//
//  SignupVC.swift
//  Ma5dom
//
//  Created by deepo on 2/17/21.
//  Copyright © 2021 deepo. All rights reserved.
//

import UIKit

class SignupVC: UIViewController {
    
    @IBOutlet weak var upsegmentcontrol: UISegmentedControl!
    @IBOutlet weak var topview: UIView!
    @IBOutlet weak var chooseview: UIView!
    @IBOutlet weak var supplierbutton: UIButton!
    @IBOutlet weak var userbutton: UIButton!
    @IBOutlet weak var nextbutton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        upsegmentcontrol.addTarget(self, action: #selector(gotosignin), for: .valueChanged)
    }
    @objc func supplierbuttonmethod()
    {
         //  color and exsisteng
        if supplierbutton.backgroundColor != #colorLiteral(red: 0.2117647059, green: 0.6117647059, blue: 0.6980392157, alpha: 1)
        {
            supplierbutton.backgroundColor = #colorLiteral(red: 0.2117647059, green: 0.6117647059, blue: 0.6980392157, alpha: 1)
            userbutton.backgroundColor =  #colorLiteral(red: 0.9607843137, green: 0.9607843137, blue: 0.9607843137, alpha: 1)
            nextbutton.setTitleColor(.black, for: .normal)
            nextbutton.isEnabled = true
            nextbutton.backgroundColor = #colorLiteral(red: 0.2117647059, green: 0.6117647059, blue: 0.6980392157, alpha: 1)
            
        }
        else
        {
            supplierbutton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.9607843137, blue: 0.9607843137, alpha: 1)
            nextbutton.isEnabled = false
            nextbutton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.9607843137, blue: 0.9607843137, alpha: 1)
           nextbutton.setTitleColor(.gray, for: .normal)
        }
        
        
        
        
    }
    @objc func userbuttonmethod()
    {
        if userbutton.backgroundColor != #colorLiteral(red: 0.2117647059, green: 0.6117647059, blue: 0.6980392157, alpha: 1)
        {
            userbutton.backgroundColor = #colorLiteral(red: 0.2117647059, green: 0.6117647059, blue: 0.6980392157, alpha: 1)
            supplierbutton.backgroundColor =  #colorLiteral(red: 0.9607843137, green: 0.9607843137, blue: 0.9607843137, alpha: 1)
         nextbutton.setTitleColor(.black, for: .normal)
            nextbutton.isEnabled = true
            nextbutton.backgroundColor = #colorLiteral(red: 0.2117647059, green: 0.6117647059, blue: 0.6980392157, alpha: 1)
        }
             
        else
        {
            userbutton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.9607843137, blue: 0.9607843137, alpha: 1)
            nextbutton.isEnabled = false
            nextbutton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.9607843137, blue: 0.9607843137, alpha: 1)
            nextbutton.setTitleColor(.gray, for: .normal)
            nextbutton.titleLabel?.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }
    @objc func nextbuttonmethod()
    {
        
    }
    @objc func gotosignin()
    {
        
        switch upsegmentcontrol.selectedSegmentIndex {
        case 1:
            dismiss(animated: true, completion: nil)
            
        default:
            print("null")
        }
        
        
    }
    func setup()
    {
        // constraint
        topview.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/3).isActive = true
        topview.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        topview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        topview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        chooseview.topAnchor.constraint(equalTo: topview.bottomAnchor, constant: -30).isActive = true
        chooseview.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        chooseview.layer.cornerRadius = 20
        // button control + add target
        nextbutton.isEnabled = false
        nextbutton.layer.cornerRadius = 15
        supplierbutton.addTarget(self, action: #selector(supplierbuttonmethod), for: .touchUpInside)
        userbutton.addTarget(self, action: #selector(userbuttonmethod), for: .touchUpInside)
        nextbutton.addTarget(self, action: #selector(nextbuttonmethod), for: .touchUpInside)
    }
    
    
    
    
}
