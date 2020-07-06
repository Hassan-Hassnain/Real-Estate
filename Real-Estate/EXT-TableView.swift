//
//  EXT-TableView.swift
//  Real-Estate
//
//  Created by اسرارالحق  on 06/07/2020.
//  Copyright © 2020 اسرارالحق . All rights reserved.
//

import UIKit

extension UITableView {
    func regCell(cellName: String){
        self.register(UINib(nibName: cellName, bundle: nil), forCellReuseIdentifier: cellName)
    }
}
