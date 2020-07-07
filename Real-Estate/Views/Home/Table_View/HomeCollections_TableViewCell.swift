//
//  HomeCollections_TableViewCell.swift
//  Real-Estate
//
//  Created by اسرارالحق  on 06/07/2020.
//  Copyright © 2020 اسرارالحق . All rights reserved.
//

import UIKit

class HomeCollections_TableViewCell: UITableViewCell {
    
    var isDesignerHome: Bool = false
    @IBOutlet weak var collectionViewHeightAnchor: NSLayoutConstraint!
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.regCell(cellName: ReadyHome_CollectionViewCell.className )
        collectionView.regCell(cellName: DesignerHomes_CollectionViewCell.className)
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

extension HomeCollections_TableViewCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if isDesignerHome {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DesignerHomes_CollectionViewCell.className, for: indexPath)
            return cell
        }
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ReadyHome_CollectionViewCell.className, for: indexPath)
        return cell
    }
    
    
    
    
}
extension HomeCollections_TableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if isDesignerHome {
            return CGSize(width: 295, height: 140)
        }
        return CGSize(width: 180, height: 217)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
}
