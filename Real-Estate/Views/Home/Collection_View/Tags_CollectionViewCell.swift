//
//  Tags_CollectionViewCell.swift
//  Real-Estate
//
//  Created by اسرارالحق  on 07/07/2020.
//  Copyright © 2020 اسرارالحق . All rights reserved.
//

import UIKit

class Tags_CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var tagLabel: UILabel!
    @IBOutlet weak var borderView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        borderView.layer.cornerRadius = 5
        borderView.layer.borderWidth = 1
    }
    
    func configure(tag: String, borderColor: UIColor?) {
        tagLabel.text = tag
        borderView.layer.borderColor = borderColor?.cgColor ?? UIColor.red.cgColor
    }
    
}
