//
//  ReadyHome_CollectionViewCell.swift
//  Real-Estate
//
//  Created by اسرارالحق  on 06/07/2020.
//  Copyright © 2020 اسرارالحق . All rights reserved.
//

import UIKit

class ReadyHome_CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var homeImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        homeImage.layer.cornerRadius = 15
    }

}
