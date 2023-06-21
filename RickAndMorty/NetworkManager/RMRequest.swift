//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Emir Alkal on 13.06.2023.
//

import Foundation

final class RMRequest {
    private static let baseUrl = "https://rickandmortyapi.com/api"
    private let endpoint: RMEndpoint
    private let pathComponents: [String]
    private let queryParameters: [URLQueryItem]
    
    private var urlString: String {
        var string = RMRequest.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            string += "/"
            pathComponents.forEach {
                string += "/\($0)"
            }
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let queryString = queryParameters.compactMap {
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }.joined(separator: "&")
            string += queryString
        }
        
        return string
    }
    
    var url: URL? {
        .init(string: urlString)
    }
    
    init(endpoint: RMEndpoint, pathComponents: [String] = [], queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}

extension RMRequest {
    static let listCharacters = RMRequest(endpoint: .character)
    
}
