//
//  SavedViewController.swift
//  Real-Estate
//
//  Created by اسرارالحق  on 07/07/2020.
//  Copyright © 2020 اسرارالحق . All rights reserved.
//

import UIKit

class SavedViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.regCell(cellName: ResultFound_TableViewCell.className)
        tableView.regCell(cellName: ResultFoundDetails_TableViewCell.className)
        
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

extension SavedViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: ResultFound_TableViewCell.className) as? ResultFound_TableViewCell
            cell?.headingLabel.text = "Saved Items"
            return cell!
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: ResultFoundDetails_TableViewCell.className)
            return cell!
        }
        
    }
    
    
}
