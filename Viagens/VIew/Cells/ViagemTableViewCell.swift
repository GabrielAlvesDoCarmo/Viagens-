
//  ViagemTableViewCell.swift
//  Viagens
//
//  Created by Gabriel Alves on 01/11/23.
//

import UIKit

class ViagemTableViewCell: UITableViewCell {

    @IBOutlet weak var backgrounCellView: UIView!
    @IBOutlet weak var imgImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var qutPeoleLabel: UILabel!
    @IBOutlet weak var precoLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var precoSemDescontoLabel: UILabel!
    @IBOutlet weak var statusCancelamentoLabel: UILabel!
    
    func configCell(_ viagem : Viagem?){
        imgImageView.image = UIImage(named: viagem?.asset ?? "")
        titleLabel.text = viagem?.titulo
        subtitleLabel.text = viagem?.subtitulo
        precoLabel.text = "R$ \(viagem?.preco ?? 0)"
        
        let attrString : NSMutableAttributedString = NSMutableAttributedString(string: "R$ \(viagem?.precoSemDesconto ?? 0)")
        
        attrString.addAttribute(
            NSAttributedString.Key.strikethroughStyle,
            value: 1,
            range:NSMakeRange(0, attrString.length)
        )
        
        precoSemDescontoLabel.attributedText = attrString
        
        if let numeroDeDias = viagem?.diaria, let numeroHospedes = viagem?.hospedes{
            let diarias = numeroDeDias == 1 ? "Diaria" : "Diarias"
            let hospedes = numeroHospedes == 1 ? "Pessoa" : "Pessoas"
            qutPeoleLabel.text = "\(numeroDeDias) \(diarias) - \(numeroHospedes) \(hospedes)"
        }
        
    }
    
}
