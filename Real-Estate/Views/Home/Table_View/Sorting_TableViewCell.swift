//
//  Sorting_TableViewCell.swift
//  Real-Estate
//
//  Created by اسرارالحق  on 07/07/2020.
//  Copyright © 2020 اسرارالحق . All rights reserved.
//

import UIKit

class Sorting_TableViewCell: UITableViewCell {

    @IBOutlet weak var optionLabel: UILabel!
    @IBOutlet weak var checkImageView: UIImageView!
    @IBOutlet weak var bgView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        bgView.layer.cornerRadius = 12
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configuref(option: SortOptions) {
        self.optionLabel.text = option.option
        if option.isSelected {
            bgView.backgroundColor = #colorLiteral(red: 0.9907075763, green: 0.9591551423, blue: 0.9624295831, alpha: 1)
            checkImageView.image = #imageLiteral(resourceName: "Icon-checkmark")
            optionLabel.textColor = .red
        }
        else
        {
            bgView.backgroundColor = .clear
            checkImageView.image = nil
            optionLabel.textColor = .black
        }
    }

}
