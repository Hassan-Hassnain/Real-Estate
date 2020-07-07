//
//  SearchResultVC.swift
//  Real-Estate
//
//  Created by اسرارالحق  on 07/07/2020.
//  Copyright © 2020 اسرارالحق . All rights reserved.
//

import UIKit

class SearchResultVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var sortTableView: UITableView!
    @IBOutlet weak var sortingView: UIView!
    @IBOutlet weak var sortViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var sortByButton: UIButton!
    @IBOutlet weak var categoriesButton: UIButton!
    
    
    var SortingOptions: [SortOptions] = []
    var a = SortOptions(option: "Newest First", isSelected: false)
    var b = SortOptions(option: "Oldest First", isSelected: false)
    var c = SortOptions(option: "Featured", isSelected: false)
    var d = SortOptions(option: "Best Rated", isSelected: false)
    var e = SortOptions(option: "ONly Near You", isSelected: false)
    var  count = 0
    var initPos = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBarController?.tabBar.isHidden = true
        sortViewHeightConstraint.constant = -382
        
        sortByButton.addBorder(side: .bottom, color: .red, width: 3)
        
        tableView.dataSource = self
        tableView.delegate = self
        sortTableView.dataSource = self
        sortTableView.delegate = self
        
        tableView.regCell(cellName: SearchField2_TableViewCell .className)
        tableView.regCell(cellName: Tags_TableViewCell .className)
        tableView.regCell(cellName: ResultFound_TableViewCell .className)
        tableView.regCell(cellName: ResultFoundDetails_TableViewCell.className)
        tableView.regCell(cellName: Sorting_TableViewCell.className)
        
        sortingView.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(gestureHandler)))
        initPos = Int(sortingView.center.y)
        
        SortingOptions = [a,b,c,d,e]
    }
    
    @objc func gestureHandler(gesture: UIPanGestureRecognizer) {
        
        let translation = gesture.translation(in: self.sortingView)
        if gesture.state == .changed {
            if translation.y > 0 {
                sortingView.center.y = CGFloat(initPos) + translation.y
            }
        } else
            if gesture.state == .ended {
                if (translation.y) > 100.0 {
                    filterButtonTapped()
                } else {
                    UIView.animate(withDuration: 0.2) {
                        self.sortingView.center.y = CGFloat(self.initPos)
                        self.view.layoutIfNeeded()
                    }
                }
        }
    }
    func backButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
    
    func closeButtonTapped () {
        print("close button tapped")
    }
    
    func filterButtonTapped() {
        
        UIView.animate(withDuration: 0.3) {
            if self.sortViewHeightConstraint.constant == 0 {
                //                self.sortingView.isHidden = false
                self.sortViewHeightConstraint.constant = -382
            } else {
                self.sortViewHeightConstraint.constant = 0
            }
            self.view.layoutIfNeeded()
        }
    }
    
}

extension SearchResultVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == sortTableView {
            return 5
        }
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView != sortTableView {
            switch indexPath.row {
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: SearchField2_TableViewCell.className) as? SearchField2_TableViewCell
                cell?.backHandler = backButtonTapped
                cell?.closeHandler = closeButtonTapped
                return cell!
            case 1:
                let cell = tableView.dequeueReusableCell(withIdentifier: Tags_TableViewCell.className) as? Tags_TableViewCell
                return cell!
            case 2:
                let cell = tableView.dequeueReusableCell(withIdentifier: ResultFound_TableViewCell.className) as? ResultFound_TableViewCell
                cell?.filterHandler = filterButtonTapped
                return cell!
            case 3...100:
                let cell = tableView.dequeueReusableCell(withIdentifier: ResultFoundDetails_TableViewCell.className)
                return cell!
            default:
                return UITableViewCell()
            }
        } else {
            let cell = sortTableView.dequeueReusableCell(withIdentifier: Sorting_TableViewCell.className) as? Sorting_TableViewCell
            cell!.configuref(option: SortingOptions[indexPath.row])
            return cell!
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        if tableView == sortTableView {
            SortingOptions = [a,b,c,d,e]
            SortingOptions[indexPath.row].isSelected = true
            tableView.reloadData()
        } else {
            if indexPath.row > 2 {
                let vc = storyboard?.instantiateViewController(identifier: ListingViewController.className)
                navigationController?.pushViewController(vc!, animated: true)
            }
        }
    }
}


