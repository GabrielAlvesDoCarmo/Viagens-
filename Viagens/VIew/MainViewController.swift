//
//  ViewController.swift
//  Viagens
//
//  Created by Gabriel Alves on 31/10/23.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var viagensTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        view.backgroundColor = UIColor(
            red: 30.0/255.0,
            green: 59.0/255,
            blue: 119/255,
            alpha: 1
        )
    }
    
    func configTableView(){
        viagensTableView.register(UINib(nibName: "ViagemTableViewCell", bundle: nil), forCellReuseIdentifier:"ViagemTableViewCell" )
        viagensTableView.register(UINib(nibName: "OfertaTableViewCell", bundle: nil), forCellReuseIdentifier: "OfertaTableViewCell")
        viagensTableView.dataSource = self
        viagensTableView.delegate = self
    }

}
