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
        return sessaoDeViagens?[section].numberLines ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ViagemTableViewCell") as? ViagemTableViewCell else{
            fatalError("erro ao criar celula")
        }
        
        let viewModel = sessaoDeViagens?[indexPath.section]
        
        switch viewModel?.type {
        case .destaques:
            cell.configCell(viewModel?.viagens[indexPath.row])
            return cell
        default:
            return UITableViewCell()
        }
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
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
}
