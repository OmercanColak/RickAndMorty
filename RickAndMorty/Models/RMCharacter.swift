//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by Ömercan Çolak on 30.05.2024.
//

import Foundation


struct RMCharacter: Codable {
        let id: Int
        let name: String
        let status: RMCharacterStatus
        let specie: String
        let type: String
        let gender: RMCharacterGender
        let origin: RMOrigin
        let location: RMSingleLocation
        let image: String
        let episode: [String]
        let url: String
        let created: String
}


