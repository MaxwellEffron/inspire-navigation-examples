//
//  LefPresentedFirstPushViewController.swift
//  Inspire Navigation Demo
//
//  Created by Max Effron on 8/25/19.
//  Copyright © 2019 Max Effron. All rights reserved.
//

import UIKit

class BlueFirstPushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "First Push"
        self.view.backgroundColor = UIColor.white
        
        let dismissButton: UIButton = UIButton(frame: CGRect(x: view.bounds.width / 2 - 100, y: view.bounds.height / 2 - 300, width: 200, height: 50))
        dismissButton.backgroundColor = UIColor.darkGray
        dismissButton.addTarget(self, action: #selector(dismissMyself), for: .touchUpInside)
        dismissButton.setTitle("Dismiss Stack", for: .normal)
        
        let pushButton: UIButton = UIButton(frame: CGRect(x: view.bounds.width / 2 - 100, y: view.bounds.height / 2 - 150, width: 200, height: 50))
        pushButton.backgroundColor = UIColor.blue
        pushButton.addTarget(self, action: #selector(pushToNextVC), for: .touchUpInside)
        pushButton.setTitle("Push onto Stack", for: .normal)
        
        let popButton: UIButton = UIButton(frame: CGRect(x: view.bounds.width / 2 - 100, y: view.bounds.height / 2, width: 200, height: 50))
        popButton.backgroundColor = UIColor.lightGray
        popButton.addTarget(self, action: #selector(popBackToFirstVC), for: .touchUpInside)
        popButton.setTitle("Pop from Stack", for: .normal)
        
        let presentButton: UIButton = UIButton(frame: CGRect(x: view.bounds.width / 2 - 100, y: view.bounds.height / 2 + 150, width: 200, height: 50))
        presentButton.backgroundColor = UIColor.purple
        presentButton.addTarget(self, action: #selector(presentNewStack), for: .touchUpInside)
        presentButton.setTitle("Present Purple Stack", for: .normal)
        
        self.view.addSubview(dismissButton)
        self.view.addSubview(popButton)
        self.view.addSubview(pushButton)
        // ME - Uncomment
         self.view.addSubview(presentButton)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem.init(barButtonSystemItem: .done, target: self, action: #selector(navigationBarCloseButtonPressed))
    }
    
    @objc func pushToNextVC() {
        self.navigationController?.pushViewController(BlueSecondPushViewController(), animated:
            true)
    }
    
    @objc func popBackToFirstVC() {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func dismissMyself() {
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func navigationBarCloseButtonPressed() {
        navigationController?.dismiss(animated: true, completion: nil)
    }
    
    @objc func presentNewStack() {
        let navigationController = UINavigationController()
        navigationController.navigationBar.barTintColor = .purple
        navigationController.navigationBar.tintColor = UIColor.white
        navigationController.navigationBar.isTranslucent = false
        navigationController.navigationBar.setValue(true, forKey: "hidesShadow")
        navigationController.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        navigationController.viewControllers = [PurpleViewController()]
        
        self.present(navigationController, animated: true, completion: nil)
    }

}
