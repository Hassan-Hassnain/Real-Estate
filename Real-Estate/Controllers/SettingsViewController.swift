//
//  SettingsViewController.swift
//  Real-Estate
//
//  Created by اسرارالحق  on 07/07/2020.
//  Copyright © 2020 اسرارالحق . All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func myAccountButtonTapped(_ sender: Any) {
        print("My Account")
    }
    @IBAction func bookingsButtonTapped(_ sender: Any) {
        print("Bookin")
    }
    @IBAction func helpButtonTapped(_ sender: Any) {
        print("Help & Support")
    }
    @IBAction func settingButtonTapped(_ sender: Any) {
        print("Settings")
    }
    @IBAction func logoutButtonTapped(_ sender: Any) {
        print("Logout")
    }
    

}
