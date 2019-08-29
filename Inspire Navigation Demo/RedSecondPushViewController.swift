//
//  RedSecondPushViewController.swift
//  Inspire Navigation Demo
//
//  Created by Max Effron on 8/25/19.
//  Copyright © 2019 Max Effron. All rights reserved.
//

import UIKit

class RedSecondPushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Second Push"
        self.view.backgroundColor = UIColor.white
        
        let popButton: UIButton = UIButton(frame: CGRect(x: view.bounds.width / 2 - 100, y: view.bounds.height / 2 - 150, width: 200, height: 50))
        popButton.backgroundColor = UIColor.lightGray
        popButton.addTarget(self, action: #selector(popBackToFirstVC), for: .touchUpInside)
        popButton.setTitle("Pop from Stack", for: .normal)
        
        let presentButton: UIButton = UIButton(frame: CGRect(x: view.bounds.width / 2 - 100, y: view.bounds.height / 2, width: 200, height: 50))
        presentButton.backgroundColor = UIColor.orange
        presentButton.addTarget(self, action: #selector(presentNewStack), for: .touchUpInside)
        presentButton.setTitle("Present Orange Stack", for: .normal)
        
        // ME - Uncomment
         self.view.addSubview(presentButton)
        self.view.addSubview(popButton)
        
    }
    
    @objc func popBackToFirstVC() {
        self.navigationController?.popViewController(animated: true)
    }

    @objc func presentNewStack() {
        let navigationController = UINavigationController()
        navigationController.navigationBar.barTintColor = .orange
        navigationController.navigationBar.tintColor = UIColor.white
        navigationController.navigationBar.isTranslucent = false
        navigationController.navigationBar.setValue(true, forKey: "hidesShadow")
        navigationController.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        navigationController.viewControllers = [OrangeViewController()]
        
        self.present(navigationController, animated: true, completion: nil)
    }
}
