//
//  Porte.swift
//  Caoculadora
//
//  Created by Pedro Henrique Nunes da Silveira Bezerra on 13/05/24.
//

import Foundation
enum Porte: String, CaseIterable{
    case pequeno = "Pequeno"
    case médio = "Média"
    case grande = "Grande"
    
    func calcularIdade(deAnos anosCaninos: Int, eMeses mesesCaninos: Int) -> Int {
        
        let multiplicador: Int
        switch self {

            case .pequeno:
                multiplicador = 6
            case .médio:
                multiplicador = 7
            case .grande:
                multiplicador = 8
        }
        
       let result = anosCaninos * multiplicador + mesesCaninos * multiplicador / 12
        
        return result
    }
}
