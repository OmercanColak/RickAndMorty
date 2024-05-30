//
//  RMService.swift
//  RickAndMorty
//
//  Created by Ömercan Çolak on 30.05.2024.
//

import Foundation

/// Primary API serviice object to get Rick And Morty Data
final class RMService{
    /// Shared singleton instance
    static let shared = RMService()
    
    ///Privatized constructor
    private init() {}
    
    
    ///Send Rick and Morty API Call
    /// -Paramaters :
    ///    - request: Request instance
    ///    - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping() -> Void) {
        
    }
        
    
}
