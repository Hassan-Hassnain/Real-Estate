//
//  Search_TableViewCell.swift
//  Real-Estate
//
//  Created by اسرارالحق  on 06/07/2020.
//  Copyright © 2020 اسرارالحق . All rights reserved.
//

import UIKit

class Search_TableViewCell: UITableViewCell {

    @IBOutlet weak var bgView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let border: UIColor = #colorLiteral(red: 0.8818284648, green: 0.8818284648, blue: 0.8818284648, alpha: 1)
        bgView.layer.cornerRadius = 12
        bgView.layer.borderColor =  border.cgColor
        bgView.layer.borderWidth = 1
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
