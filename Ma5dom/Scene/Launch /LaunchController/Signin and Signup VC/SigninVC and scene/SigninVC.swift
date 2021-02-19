//
//  SigninVCViewController.swift
//  Ma5dom
//
//  Created by deepo on 2/17/21.
//  Copyright © 2021 deepo. All rights reserved.
//

import UIKit

class SigninVC: UIViewController {
    
    @IBOutlet weak var segmentcontrol: UISegmentedControl!
    @IBOutlet weak var signinbutton: UIButton!
    @IBOutlet weak var passtextfield: UITextField!
    @IBOutlet weak var phonetextfield: UITextField!
    @IBOutlet weak var topview: UIView!
    @IBOutlet weak var signinview: UIView!
    @IBOutlet weak var forgetpasswordbutton: UIButton!
    var indexsegment = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        handlingKeyboardShowAndHiding()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1.5) {
            self.signinview.transform = .identity
        }
    }
    @objc func methood()
    {
        switch segmentcontrol.selectedSegmentIndex {
        case 0:
            let dest = SignupVC()
            dest.modalPresentationStyle = .fullScreen
            present(dest, animated: true) {
                self.segmentcontrol.selectedSegmentIndex = 1
            }
        default:
            print("no")
        }
        
    }
    func setup()
    {
        // constraint
        topview.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/3).isActive = true
        topview.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        topview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        topview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        signinview.topAnchor.constraint(equalTo: topview.bottomAnchor, constant: -30).isActive = true
        signinview.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        signinview.layer.cornerRadius = 20
        signinbutton.layer.cornerRadius = 15
        // animation view
        signinview.transform = CGAffineTransform(translationX: 0, y: UIScreen.main.bounds.height+10)
        // segment addtarget
        segmentcontrol.addTarget(self, action: #selector(methood), for: .valueChanged)
        
    }
    
    
    
    
}
