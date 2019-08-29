//
//  TableViewController.swift
//  Inspire Navigation Demo
//
//  Created by Max Effron on 8/25/19.
//  Copyright © 2019 Max Effron. All rights reserved.
//

import UIKit

let kTableCellReuseIdentifier = "kTableCellReuseIdentifier"
let kHeaderCellReuseIdentifier = "kHeaderCellReuseIdentifier"

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(editButtonTapped))
        tableView.separatorStyle = .singleLine
        tableView.backgroundColor = UIColor.white
        
        self.title = "Table View Controller"
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "This is the header"
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: kTableCellReuseIdentifier)
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: kTableCellReuseIdentifier)
        }
        
        
        var titleText: String
        var detailText: String
        
        switch indexPath.row {
        case 0:
            titleText = "Schedule"
            detailText = "Setup Here"
        case 1:
            titleText = "Comfort Modes"
            detailText = "Get cozy"
        case 2:
            titleText = "Fan"
            detailText = "Auto or Off"
        case 3:
            titleText = "Blah blah"
            detailText = "blah blah blah"
        default:
            titleText = ""
            detailText = ""
        }
        
        cell?.textLabel?.text = titleText
        cell?.detailTextLabel?.text = detailText
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var titleText: String
        var detailText: String
        
        switch indexPath.row {
        case 0:
            titleText = "Schedule"
            detailText = "Setup Here"
        case 1:
            titleText = "Comfort Modes"
            detailText = "Get cozy"
        case 2:
            titleText = "Fan"
            detailText = "Auto or Off"
        case 3:
            titleText = "Blah blah"
            detailText = "blah blah blah"
        default:
            titleText = ""
            detailText = ""
        }
        
        let toolViewController = TableDetailViewController(titleText: titleText, subtitleText: detailText)
        
        self.navigationController?.pushViewController(toolViewController, animated: true)
    }
    
    @objc func editButtonTapped(sender: UIButton!) {
        let navigationController = UINavigationController()
        navigationController.navigationBar.barTintColor = .black
        navigationController.navigationBar.tintColor = UIColor.white
        navigationController.navigationBar.isTranslucent = false
        navigationController.navigationBar.setValue(true, forKey: "hidesShadow")
        navigationController.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        navigationController.viewControllers = [EditTableViewController()]
        
        self.present(navigationController, animated: true, completion: nil)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

}

