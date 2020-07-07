//
//  ViewController.swift
//  Real-Estate
//
//  Created by اسرارالحق  on 06/07/2020.
//  Copyright © 2020 اسرارالحق . All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.regCell(cellName: Location_TableViewCell.className)
        tableView.regCell(cellName: Search_TableViewCell.className)
        tableView.regCell(cellName: JustIn_TableViewCell.className)
        tableView.regCell(cellName: HomeCollections_TableViewCell.className)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.tabBar.isHidden = false
    }
    
    func searchButtonTapped() {
        let vc = storyboard?.instantiateViewController(identifier: SearchResultVC.className)
        navigationController?.pushViewController(vc!, animated: true)
    }
    
    func settingButtonTapped() {
        let vc = storyboard?.instantiateViewController(identifier: SettingsViewController.className)
        navigationController?.pushViewController(vc!, animated: true)
    }
    
    
}

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: Location_TableViewCell.className) as? Location_TableViewCell
            cell?.settingHandler = settingButtonTapped
            return cell!
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: Search_TableViewCell.className) as? Search_TableViewCell
            cell?.handler = searchButtonTapped
            return cell!
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: JustIn_TableViewCell.className)
            return cell!
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: HomeCollections_TableViewCell.className)
            return cell!
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: JustIn_TableViewCell.className) as! JustIn_TableViewCell
            cell.headingText.text = "Designer Homes"
            return cell
        case 5:
            let cell = tableView.dequeueReusableCell(withIdentifier: HomeCollections_TableViewCell.className) as? HomeCollections_TableViewCell
            cell?.isDesignerHome = true
            cell?.collectionViewHeightAnchor.constant = 160
            return cell!
        case 6:
            let cell = tableView.dequeueReusableCell(withIdentifier: JustIn_TableViewCell.className) as! JustIn_TableViewCell
            cell.headingText.text = "Near you"
            return cell
        case 7:
            let cell = tableView.dequeueReusableCell(withIdentifier: HomeCollections_TableViewCell.className)
            return cell!
        default:
            return UITableViewCell()
        }
        
        
        
        
        
    }
    
    
}
