//
//  ViagemOfertaViewModel.swift
//  Viagens
//
//  Created by Gabriel Alves on 02/11/23.
//

import Foundation

class ViagemOfertaViewModel : ViagemViewModel{
    var titleSection: String {
        return "Ofertas"
    }
    
    var type: ViagemViewModelType {
        return .ofertas
    }
    
    var viagens: [Viagem]
    
    var numberLines: Int {
        return 1
    }
    
    init(_ viagens: [Viagem]) {
        self.viagens = viagens
    }
    
}
