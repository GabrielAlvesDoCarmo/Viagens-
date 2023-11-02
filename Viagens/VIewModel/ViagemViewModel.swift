//
//  ViagemViewModel.swift
//  Viagens
//
//  Created by Gabriel Alves on 01/11/23.
//

import Foundation

enum ViagemViewModelType : String{
    case destaques
    case ofertas
    case internacionais
}
protocol ViagemViewModel {
    var titleSection : String {get}
    var type : ViagemViewModelType {get}
    var viagens : [Viagem] {get set}
    var numberLines : Int {get}
}
