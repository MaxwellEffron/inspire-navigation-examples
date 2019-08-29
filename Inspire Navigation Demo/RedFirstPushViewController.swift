//
//  FirstPushViewController.swift
//  Inspire Navigation Demo
//
//  Created by Max Effron on 8/25/19.
//  Copyright © 2019 Max Effron. All rights reserved.
//

import UIKit

class RedFirstPushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "First Push"
        self.view.backgroundColor = UIColor.white
        
        let pushButton: UIButton = UIButton(frame: CGRect(x: view.bounds.width / 2 - 100, y: view.bounds.height / 2 - 300, width: 200, height: 50))
        pushButton.backgroundColor = UIColor.red
        pushButton.addTarget(self, action: #selector(pushToNextVC), for: .touchUpInside)
        pushButton.setTitle("Push onto Stack", for: .normal)
        
        let popButton: UIButton = UIButton(frame: CGRect(x: view.bounds.width / 2 - 100, y: view.bounds.height / 2 - 150, width: 200, height: 50))
        popButton.backgroundColor = UIColor.lightGray
        popButton.addTarget(self, action: #selector(popBackToFirstVC), for: .touchUpInside)
        popButton.setTitle("Pop from Stack", for: .normal)
        
        self.view.addSubview(popButton)
        self.view.addSubview(pushButton)
        
    }
    
    @objc func pushToNextVC() {
        self.navigationController?.pushViewController(RedSecondPushViewController(), animated:
            true)
    }
    
    @objc func popBackToFirstVC() {
        self.navigationController?.popViewController(animated: true)
    }
}
