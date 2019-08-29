//
//  EditTableViewController.swift
//  Inspire Navigation Demo
//
//  Created by Max Effron on 8/25/19.
//  Copyright © 2019 Max Effron. All rights reserved.
//

import UIKit

class EditTableViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Presented From Edit"
        self.view.backgroundColor = UIColor.lightGray
        
        navigationItem.rightBarButtonItem = UIBarButtonItem.init(barButtonSystemItem: .done, target: self, action: #selector(navigationBarCloseButtonPressed))
        
        // Do any additional setup after loading the view.
    }
    
    @objc func navigationBarCloseButtonPressed() {
        navigationController?.dismiss(animated: true, completion: nil)
    }

}
