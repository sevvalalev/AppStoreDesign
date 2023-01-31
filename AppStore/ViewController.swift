//
//  ViewController.swift
//  AppStore
//
//  Created by Sevval Alev on 28.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var gamesOne = [GamesOne]()
    var gamesTwo = [GamesTwo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewDelegate()
        customNibs()
    }
    
    func tableViewDelegate() {
        tableView.delegate = self
        tableView.dataSource = self
    }

    func customNibs() {
        let customCellNib: UINib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(customCellNib, forCellReuseIdentifier: "tableViewCell")
        
        let secondCustomCellNib: UINib = UINib(nibName: "SecondTableViewCell", bundle: nil)
        tableView.register(secondCustomCellNib, forCellReuseIdentifier: "secondTableViewCell")
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as? TableViewCell {
                return cell
            }
        }else if indexPath.section == 1 {
            if let cell2 = tableView.dequeueReusableCell(withIdentifier: "secondTableViewCell", for: indexPath) as? SecondTableViewCell {
                cell2.sectionHeaderLabel.text = "What We're Playing"
                return cell2
            }
        }else if indexPath.section == 2 {
            if let cell3 = tableView.dequeueReusableCell(withIdentifier: "secondTableViewCell", for: indexPath) as? SecondTableViewCell {
                cell3.sectionHeaderLabel.text = "Must-Play Games"
                return cell3
            }
        }else if indexPath.section == 3 {
            if let cell4 = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as? TableViewCell {
                return cell4
            }
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 335
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        var sectionHeader = ""
//            if section == 0 {
//                sectionHeader = " "
//            } else if section == 1 {
//                sectionHeader = " "
//            }else if section == 2 {
//                sectionHeader = " "
//            }else if section == 3 {
//                sectionHeader = " "
//            }
//            return sectionHeader
//    }
    
}
