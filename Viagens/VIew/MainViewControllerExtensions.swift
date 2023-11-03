//
//  MainViewControllerExtensions.swift
//  Viagens
//
//  Created by Gabriel Alves on 31/10/23.
//

import Foundation
import UIKit

extension MainViewController : UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sessaoDeViagens?.count ?? 0
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sessaoDeViagens?[section].numberLines ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let viewModel = sessaoDeViagens?[indexPath.section]
        switch viewModel?.type {
        case .destaques:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ViagemTableViewCell") as? ViagemTableViewCell else{
                fatalError("erro ao criar celula")
            }
            
            cell.configCell(viewModel?.viagens[indexPath.row])
            return cell
            
        case .ofertas:
            
            guard let cellOferta = tableView.dequeueReusableCell(withIdentifier: "OfertaTableViewCell") as? OfertaTableViewCell else {
                fatalError("erro ao criar ofertas")
                
            }
            cellOferta.configuraCelula(viewModel?.viagens)
            return cellOferta
        default:
            return UITableViewCell()
        }
            }
}

extension MainViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            let headerView = Bundle.main.loadNibNamed(
                "HomeTableViewHeader",
                owner:self,
                options: nil
            )?.first as? HomeTableViewHeader
            headerView?.configView()
            return headerView
        }
        return nil
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 300
        }
        return 0
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
}
