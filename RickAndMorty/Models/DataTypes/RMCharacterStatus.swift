//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Ömercan Çolak on 11.06.2024.
//

import Foundation


enum RMCharacterStatus: String, Codable {
    //Alive, Dead or unknown
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
    
    
    var text: String {
        switch self {
        case .alive, .dead:
            return rawValue
        case .unknown:
            return "Unknown"
        }
    }
}
