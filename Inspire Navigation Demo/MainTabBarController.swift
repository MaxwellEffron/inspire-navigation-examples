//
//  MainTabBarController.swift
//  Inspire Navigation Demo
//
//  Created by Max Effron on 8/25/19.
//  Copyright © 2019 Max Effron. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    init() {
        super.init(nibName: nil, bundle: nil)
        
        prepareViewControlls()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    func prepareViewControlls() {

        let leftNavigationController = UINavigationController()
        leftNavigationController.navigationBar.barTintColor = .red
        leftNavigationController.navigationBar.tintColor = UIColor.white
        leftNavigationController.navigationBar.isTranslucent = false
        leftNavigationController.navigationBar.setValue(true, forKey: "hidesShadow")
        leftNavigationController.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        leftNavigationController.viewControllers = [RedViewController()]
        leftNavigationController.tabBarItem  = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        
        let rightNavigationController = UINavigationController()
        rightNavigationController.navigationBar.barTintColor = .darkGray
        rightNavigationController.navigationBar.tintColor = UIColor.white
        rightNavigationController.navigationBar.isTranslucent = false
        rightNavigationController.navigationBar.setValue(true, forKey: "hidesShadow")
        rightNavigationController.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        rightNavigationController.viewControllers = [TableViewController()]
        rightNavigationController.tabBarItem  = UITabBarItem(tabBarSystemItem: .downloads, tag: 1)

        self.viewControllers = [leftNavigationController, rightNavigationController]
        self.selectedIndex = 0
    }

}
