//
//  MainViewControllerExtensions.swift
//  Viagens
//
//  Created by Gabriel Alves on 31/10/23.
//

import Foundation
import UIKit

extension MainViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = "viagem numero \(indexPath.row)"
        return cell
    }
}

extension MainViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = Bundle.main.loadNibNamed(
            "HomeTableViewHeader",
            owner:self,
            options: nil
        )?.first as? HomeTableViewHeader
        headerView?.configView()
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }
}
