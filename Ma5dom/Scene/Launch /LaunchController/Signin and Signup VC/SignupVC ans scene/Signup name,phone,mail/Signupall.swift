//
//  Signupall.swift
//  Ma5dom
//
//  Created by deepo on 2/19/21.
//  Copyright © 2021 deepo. All rights reserved.
//

import UIKit

class Signupall: UIViewController {
    @IBOutlet weak var topview: UIView!
    @IBOutlet weak var descriptionlabel: UILabel!
    @IBOutlet weak var segmentcontrol: UISegmentedControl!
    @IBOutlet weak var signupview: UIView!
    @IBOutlet weak var firstname: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var phonenumber: UITextField!
    @IBOutlet weak var lastname: UITextField!
    @IBOutlet weak var signupbutton: UIButton!
    var descriptionname = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        handlingKeyboardShowAndHiding()
        setup()
        // Do any additional setup after loading the view.
    }
    func setup()
    {
        // constraint
        topview.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/3).isActive = true
        topview.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        topview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        topview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        signupview.topAnchor.constraint(equalTo: topview.bottomAnchor, constant: -30).isActive = true
        signupview.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        signupview.layer.cornerRadius = 20
        // element
        signupbutton.layer.cornerRadius = 15
        descriptionlabel.text = descriptionname
        signupbutton.isEnabled = false
        // targets
        segmentcontrol.addTarget(self, action: #selector(handelsegment), for: .valueChanged)
        firstname.addTarget(self, action: #selector(handeltextfield), for: .allEditingEvents)
         lastname.addTarget(self, action: #selector(handeltextfield), for: .allEditingEvents)
         password.addTarget(self, action: #selector(handeltextfield), for: .allEditingEvents)
         phonenumber.addTarget(self, action: #selector(handeltextfield), for: .allEditingEvents)
         email.addTarget(self, action: #selector(handeltextfield), for: .allEditingEvents)
        signupbutton.addTarget(self, action: #selector(handelsigninbutton), for: .touchUpInside)
    }
    @objc func handelsigninbutton()
    {
        
        let dest = TabbarController()
        dest.modalPresentationStyle = .fullScreen
        present(dest, animated: true, completion: nil)
    }
    @objc func handeltextfield()
    {
        if firstname.text?.count ?? 0 > 0  && lastname.text?.count ?? 0 > 0  && phonenumber.text?.count ?? 0 > 0  && password.text?.count ?? 0 > 0  && email.text?.count ?? 0 > 0
        {
            signupbutton.backgroundColor = #colorLiteral(red: 0.2117647059, green: 0.6117647059, blue: 0.6980392157, alpha: 1)
            signupbutton.setTitleColor(.black, for: .normal)
            signupbutton.isEnabled = true
        }
        else
        {
            signupbutton.backgroundColor = .lightGray
            signupbutton.setTitleColor(.darkGray, for: .normal)
            signupbutton.isEnabled = false
        }
        
    }
    @objc func handelsegment()
    {
        weak var pvc = presentingViewController
        dismiss(animated: true) {
            pvc?.dismiss(animated: true, completion: nil)
        }
        
        
    }
    func addimagefortextfeld(textfield:UITextField,image:UIImage)
    {
        let imageView = UIImageView(frame: CGRect(x: 10, y: 0, width: 35, height: 40))
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        let containimageview = UIView(frame: CGRect(x: 10, y: 0, width: 35, height: 40))
        containimageview.addSubview(imageView)
        textfield.leftView = containimageview
        textfield.leftViewMode = .always
    }
    
    
}
