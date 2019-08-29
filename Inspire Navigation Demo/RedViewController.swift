//
//  FirstViewController.swift
//  Inspire Navigation Demo
//
//  Created by Max Effron on 8/25/19.
//  Copyright © 2019 Max Effron. All rights reserved.
//

import UIKit
import AVKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "First Tab"
        self.view.backgroundColor = UIColor.white
        
        let pushButton: UIButton = UIButton(frame: CGRect(x: view.bounds.width / 2 - 100, y: view.bounds.height / 2 - 300, width: 200, height: 50))
        pushButton.backgroundColor = UIColor.red
        pushButton.addTarget(self, action: #selector(pushToNextVC), for: .touchUpInside)
        pushButton.setTitle("Push onto Stack", for: .normal)
        
        let presentButton: UIButton = UIButton(frame: CGRect(x: view.bounds.width / 2 - 100, y: view.bounds.height / 2, width: 200, height: 50))
        presentButton.backgroundColor = UIColor.blue
        presentButton.addTarget(self, action: #selector(presentNewStack), for: .touchUpInside)
        presentButton.setTitle("Present Blue Stack", for: .normal)
        
        self.view.addSubview(pushButton)
        self.view.addSubview(presentButton)
        
        
    }

     @objc func pushToNextVC() {
        
//        let videoURL = URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")
//        let player = AVPlayer(url: videoURL!)
//        let playerViewController = AVPlayerViewController()
//        playerViewController.player = player
//        self.present(playerViewController, animated: true) {
//            playerViewController.player!.play()
//        }
        
        self.navigationController?.pushViewController(RedFirstPushViewController(), animated:
            true)
    }
    
    @objc func presentNewStack() {
        let navigationController = UINavigationController()
        navigationController.navigationBar.barTintColor = .blue
        navigationController.navigationBar.tintColor = UIColor.white
        navigationController.navigationBar.isTranslucent = false
        navigationController.navigationBar.setValue(true, forKey: "hidesShadow")
        navigationController.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        navigationController.viewControllers = [BlueViewController()]
        
        self.present(navigationController, animated: true, completion: nil)
    }

}

