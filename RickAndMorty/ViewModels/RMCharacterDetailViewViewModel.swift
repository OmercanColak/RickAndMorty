//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Ömercan Çolak on 27.06.2024.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    private let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    public var title: String {
        character.name.uppercased()
    }
}
