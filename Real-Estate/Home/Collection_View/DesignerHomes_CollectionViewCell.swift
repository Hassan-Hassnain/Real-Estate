//
//  DesignerHomes_CollectionViewCell.swift
//  Real-Estate
//
//  Created by اسرارالحق  on 07/07/2020.
//  Copyright © 2020 اسرارالحق . All rights reserved.
//

import UIKit

class DesignerHomes_CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var homeImage: UIImageView!
    @IBOutlet weak var rateView: UIView!
    @IBOutlet weak var rateLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        rateView.layer.cornerRadius = rateView.frame.size.height / 2
        homeImage.layer.cornerRadius = 15
    }

}
