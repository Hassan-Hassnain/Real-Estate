//
//  Location_TableViewCell.swift
//  Real-Estate
//
//  Created by اسرارالحق  on 06/07/2020.
//  Copyright © 2020 اسرارالحق . All rights reserved.
//

import UIKit

class Location_TableViewCell: UITableViewCell {
    
    var settingHandler: emptyHandler?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func expandButton(_ sender: Any) {
        print("expand button tapped")
    }
    
    @IBAction func settingButton(_ sender: Any) {
        settingHandler?()
    }
    
    
}
