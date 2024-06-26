//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Ömercan Çolak on 30.05.2024.
//

import Foundation

/// Object that represents a single API call
final class RMRequest {
    // Base Url
    // Endpoint
    // Path Components
    // Query parameters
    
    
    /// API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired endpoint
    private let endpoint: RMEndpoint
    
    /// Path Components API, if any
    private let pathComponents: [String]
    
    /// Query Arguments API, if any
    private let queryParameters: [URLQueryItem]
    
    // https://rickandmortyapi.com/api/character/2
    // Constructed url for the api request in string Format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            //name=value&name=value
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            string += argumentString
        }
        return string
    }
    /// Computed & constructed API url
    public var url: URL? {
       return URL(string: urlString)
    }
    /// Desired https methodf
    public let httpMethod = "GET"
    
    ///Mark : - Public
    
    /// Construct Request
    /// - Parameters :
    ///   - endpoint: Target endpoint
    ///   - pathComponents : Collection of path components
    ///   - queryParameters: Collection of query parameters
    public init(endpoint: RMEndpoint,
         pathComponents: [String] = [],
         queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
}

extension RMRequest {
    static let listCharactersRequests = RMRequest(endpoint: .character)
}
