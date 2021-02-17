//
//  HomeController.swift
//  Ma5dom
//
//  Created by deepo on 1/31/21.
//  Copyright © 2021 deepo. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    
    @IBOutlet weak var HomeTableView: UITableView!
    @IBOutlet weak var SearchBar: UISearchBar!
 
    @IBOutlet weak var CollectionViewHeader: UICollectionView!
    @IBOutlet weak var TopView: UIView!
  
    
    // department images
    let departmentphoto = [ "icon", "icon-1", "icon-2","icon-3", "icon-4", "icon-5" ,"icon-6", "icon-7" ,"icon-7", "icon-8" ,"icon-9" ,"icon-10"]
    // headerCollectionView images
    let  photo = ["Banner 1", "Banner 2", "Banner 3" ,"Banner 1" ,"Banner 1", "Banner 1", "Banner 1" ,"Banner 1"]
    var currentindexphoto = 0
    var time:Timer?
    override func viewDidLoad() {
        super.viewDidLoad()
        SetUpHomeController()
        
        //  home tableview control
        HomeTableView.delegate = self
        HomeTableView.dataSource = self
        HomeTableView.register(UINib(nibName: "CollectionTableViewCell", bundle: nil), forCellReuseIdentifier: CollectionTableViewCell.identifier )
        
    
        
    }
    
    
//    @IBAction func showdepartmentcollection(_ sender: Any) {
//        let dest = DepartmentVc()
//        dest.modalPresentationStyle = .fullScreen
//        present(dest, animated: true, completion: nil)
//    }
    
    
    
}
extension HomeController:UITableViewDelegate,UITableViewDataSource
{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view  = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 40))
        view.backgroundColor = .white
        view.tintColor = .black
        
        // header title Attributes and constraint
        let headername = UILabel(frame: CGRect(x: 0, y: 0, width: 50, height: 20 ))
        view.addSubview(headername)
        headername.translatesAutoresizingMaskIntoConstraints = false
        headername.tintColor = .black
        headername.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        headername.topAnchor.constraint(equalTo: view.topAnchor, constant: 15).isActive = true
 
        // header button Attributes and constraint
        let headerbtn = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 20))
        view.addSubview(headerbtn)
        headerbtn.translatesAutoresizingMaskIntoConstraints = false
        headerbtn.setImage(UIImage(systemName: "arrow.left"), for: .normal)
        headerbtn.setTitle(" عرض الكل", for: .normal)
        headerbtn.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        headerbtn.setTitleColor(.black, for: .normal)
        headerbtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        headerbtn.topAnchor.constraint(equalTo: view.topAnchor, constant: 15).isActive = true
        headerbtn.heightAnchor.constraint(equalToConstant: 20).isActive = true
        headerbtn.widthAnchor.constraint(equalToConstant: 100).isActive = true
      
        
        
        //  section name and button
        if section == 0
        {
            headername.text = " الاقسام"
            headerbtn.addTarget(self, action: #selector(gotodepartment), for: .touchUpInside)
        }
       else if section == 1
        {
            headername.text = "منتجات"
            
        }
        else if section == 2
        {
            headername.text = "منتجات برده"
            
        }
        
        return view
    }
    
  @objc  func gotodepartment()
    {
         let dest = DepartmentVc()
               dest.modalPresentationStyle = .fullScreen
                 present(dest, animated: true, completion: nil)
       // present(TabbarController(), animated: true, completion: nil)
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "CollectionTableViewCell", for: indexPath)  as! CollectionTableViewCell
        cell.tableviewsecion = indexPath.section
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 0
        {
            return 150
        }
        return 258
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    
    
    
    
}

