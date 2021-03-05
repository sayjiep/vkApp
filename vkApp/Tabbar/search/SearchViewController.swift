//
//  SearchViewController.swift
//  vkApp
//
//  Created by Алёночка on 03.03.2021.
//

import UIKit

class SearchViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SearchTableViewCell
        switch indexPath.row {
        case 0:
            cell.pic11.image = UIImage(named: "11")
            cell.pic22.image = UIImage(named: "12")
        case 1:
            cell.pic11.image = UIImage(named: "13")
            cell.pic22.image = UIImage(named: "14")
        default:
            cell.pic11.image = UIImage(named: "15")
        }
        return cell
        
    }
    
    func tableViews(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView {
        return UIView()
    }
}
