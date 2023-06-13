//
//  NetworkManager.swift
//  RickAndMorty
//
//  Created by Emir Alkal on 13.06.2023.
//

import Foundation

final class NetworkManager {
    static let shared = NetworkManager()
    
    private init() {}
    
    public func execute<T: Decodable>(expecting type: T.Type, _ request: RMRequest, completion: @escaping (Result<T, Error>) -> Void) {
        
    }
}
