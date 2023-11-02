//
//  ViagemDestaqueViewModel.swift
//  Viagens
//
//  Created by Gabriel Alves on 01/11/23.
//

import Foundation
class ViagemDestaqueViewModel : ViagemViewModel{
    var titleSection: String {
        return "destaques"
    }
    
    var type: ViagemViewModelType {
        return .destaques
    }
    
    var viagens: [Viagem]
    
    var numberLines: Int {
        return viagens.count
    }
    
    init(_ viagens: [Viagem]) {
        self.viagens = viagens
    }
    
    
}
