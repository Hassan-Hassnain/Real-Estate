//
//  Extensions.swift
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


extension UICollectionView {
    func regCell(cellName: String){
        self.register(UINib(nibName: cellName, bundle: nil), forCellWithReuseIdentifier: cellName)
    }
}


extension NSObject {
    class var className: String {
        return String(describing: self)
    }
}
