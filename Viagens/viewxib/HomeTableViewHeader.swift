//
//  HomeTableViewHeader.swift
//  Viagens
//
//  Created by Gabriel Alves on 31/10/23.
//

import UIKit

class HomeTableViewHeader: UIView {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var bannerImageView: UIImageView!
    @IBOutlet weak var colorGreenView: UIView!
    
    func configView(){
        headerView.backgroundColor = UIColor(red: 30.0/255.0, green: 59.0/255.0, blue: 119.0/255.0, alpha: 1)
    }
    
}
