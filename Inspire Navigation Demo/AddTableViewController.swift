//
//  AddTableViewController.swift
//  Inspire Navigation Demo
//
//  Created by Max Effron on 8/25/19.
//  Copyright © 2019 Max Effron. All rights reserved.
//

import UIKit

class AddTableViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Presented From Edit"
        self.view.backgroundColor = UIColor.lightGray
        
        let dismissButton: UIButton = UIButton(frame: CGRect(x: view.bounds.width / 2 - 100, y: view.bounds.height / 2 - 300, width: 200, height: 50))
        dismissButton.backgroundColor = UIColor.darkGray
        dismissButton.addTarget(self, action: #selector(dismissMyself), for: .touchUpInside)
        dismissButton.setTitle("Dismiss Stack", for: .normal)
        
        let pushButton: UIButton = UIButton(frame: CGRect(x: view.bounds.width / 2 - 100, y: view.bounds.height / 2 - 150, width: 200, height: 50))
        pushButton.backgroundColor = UIColor.orange
        pushButton.addTarget(self, action: #selector(pushToNextVC), for: .touchUpInside)
        pushButton.setTitle("Push onto Stack", for: .normal)
        
        self.view.addSubview(pushButton)
        self.view.addSubview(dismissButton)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem.init(barButtonSystemItem: .done, target: self, action: #selector(navigationBarCloseButtonPressed))
        
        // Do any additional setup after loading the view.
    }
    
    @objc func pushToNextVC() {
        self.navigationController?.pushViewController(AddTableFirstPushViewController(), animated:
            true)
    }
    
    @objc func dismissMyself() {
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func navigationBarCloseButtonPressed() {
        navigationController?.dismiss(animated: true, completion: nil)
    }

}
