//
//  TabbarController.swift
//  Ma5dom
//
//  Created by deepo on 2/2/21.
//  Copyright © 2021 deepo. All rights reserved.
//

import UIKit

class TabbarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        //my  ViewControllers
        let homeController = HomeController(nibName: "HomeController", bundle: nil)
        let profileVC = HomeController(nibName: "HomeController", bundle: nil)
        let shopingVC = HomeController(nibName: "HomeController", bundle: nil)
        let favouriteVC = HomeController(nibName: "HomeController", bundle: nil)
        
        // Tabbar
        let profiletab = UITabBarItem(title: "حسابي", image: UIImage(named: "profile"), tag: 0)
        let lovedtab = UITabBarItem(title: "المفضلة", image: UIImage(named: "love"), tag: 1)
        let buyingtab  = UITabBarItem(title: "السلة", image: UIImage(named: "cart"), tag: 2)
        let hometab = UITabBarItem(title: "الرئيسية", image: UIImage(named: "home"), tag: 3)
        
        // tabbarControl
        profileVC.tabBarItem = profiletab
        favouriteVC.tabBarItem = lovedtab
        shopingVC.tabBarItem = buyingtab
        homeController.tabBarItem = hometab
        
        //
        
        let tabControllers = [homeController,profileVC,shopingVC,favouriteVC]
        self.tabBarController?.setViewControllers(tabControllers, animated: true)
        self.viewControllers = tabControllers
        tabBar.backgroundColor = .white
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    // MARK: - Delegate method
    func tabBarController(tabBarController: UITabBarController, shouldSelectViewController viewController: UIViewController) -> Bool {
        return true
    }
    
    
    
}
