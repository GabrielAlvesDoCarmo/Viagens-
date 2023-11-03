//
//  OfertaTableViewCell.swift
//  Viagens
//
//  Created by Gabriel Alves on 02/11/23.
//

import UIKit

class OfertaTableViewCell: UITableViewCell {
    @IBOutlet var ofertaImagens: [UIImageView]!
    @IBOutlet var ofertaTitles: [UILabel]!
    @IBOutlet var valorConDesconto: [UILabel]!
    @IBOutlet var ofertSubtitle: [UILabel]!
    @IBOutlet var valorSemDesconto: [UILabel]!
    @IBOutlet var fundoParaSombra: [UIView]!
    
    private var viagens: [Viagem]?
       
       func configuraCelula(_ viagens: [Viagem]?) {
           guard let listaDeViagem = viagens else { return }
           
           for i in 0..<listaDeViagem.count {
               setOutlets(i, viagem: listaDeViagem[i])
           }
//           fundoParaSombra.forEach { view in
//               view.addSombra()
//           }
//           
       }
       
       func setOutlets(_ index: Int, viagem: Viagem) {
           let imageOutlet = ofertaImagens[index]
           imageOutlet.image = UIImage(named: viagem.asset)
           
           let tituloOutlet = ofertaTitles[index]
           tituloOutlet.text = viagem.titulo
           
           let subtituloOutlet = ofertSubtitle[index]
           subtituloOutlet.text = viagem.subtitulo
           
           let precoSemDescontoOutlet = valorSemDesconto[index]
           precoSemDescontoOutlet.text = "A partir de R$ \(viagem.precoSemDesconto)"
           
           let precoOutlet = valorConDesconto[index]
           precoOutlet.text = "R$ \(viagem.preco)"
       }
       
    
}
