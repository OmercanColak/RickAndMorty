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
    ///    - type: The type of object we expect to get back
    ///    - completion: Callback with data or error
    public func execute<T: Codable>(_ request: RMRequest,
                                    expecting type: T.Type,
                                    completion: @escaping( Result<String, Error>) -> Void) {
        
    }
        
    
}
