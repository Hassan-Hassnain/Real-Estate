//
//  SearchField2_TableViewCell.swift
//  Real-Estate
//
//  Created by اسرارالحق  on 07/07/2020.
//  Copyright © 2020 اسرارالحق . All rights reserved.
//

import UIKit

class SearchField2_TableViewCell: UITableViewCell {
    
    var backHandler: emptyHandler?
    var closeHandler: emptyHandler?

    @IBOutlet weak var searchField: TextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        searchField.layer.cornerRadius = 12
        searchField.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        searchField.layer.borderWidth = 1
        searchField.padding = UIEdgeInsets(top: 0, left: 40, bottom: 0, right: 40)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func backButton(_ sender: Any) {
        backHandler?()
    }
    @IBAction func closeButton(_ sender: Any) {
        closeHandler?()
    }
    
}
