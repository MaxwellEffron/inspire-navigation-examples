//
//  TableDetailViewController.swift
//  Inspire Navigation Demo
//
//  Created by Max Effron on 8/25/19.
//  Copyright © 2019 Max Effron. All rights reserved.
//

import UIKit

class TableDetailViewController: UIViewController {

    var titleText: String?
    var subtitleText: String?
    
    init(titleText: String?, subtitleText: String?) {
        super.init(nibName: nil, bundle: nil)
        
        self.titleText = titleText
        self.subtitleText = subtitleText
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Table Detail"
        self.view.backgroundColor = .white
        
        let titleLabel: UILabel = UILabel(frame: CGRect(x: view.bounds.width / 2 - 100, y: view.bounds.height / 2 - 300, width: 200, height: 50))
        let subtitleLabel: UILabel = UILabel(frame: CGRect(x: view.bounds.width / 2 - 100, y: view.bounds.height / 2 - 200, width: 200, height: 50))
        
        titleLabel.text = self.titleText
        subtitleLabel.text = self.subtitleText
        
        self.view.addSubview(titleLabel)
        self.view.addSubview(subtitleLabel)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
