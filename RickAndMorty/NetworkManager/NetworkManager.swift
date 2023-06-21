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
        guard let urlRequest = self.request(from: request) else {
            completion(.failure(NetworkManagerError.failedToCreateRequest))
            return
        }
        let task = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            guard let data, error == nil else {
                completion(.failure(NetworkManagerError.failedToGetData))
                return
            }
            do {
                let decodedData = try JSONDecoder().decode(type.self, from: data)
                completion(.success(decodedData))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
    
    private func request(from rmRequest: RMRequest) -> URLRequest? {
        guard let url = rmRequest.url else { return nil }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        return request
    }
}

enum NetworkManagerError: Error {
    case failedToCreateRequest
    case failedToGetData
}
