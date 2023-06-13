//
//  RMStatus.swift
//  RickAndMorty
//
//  Created by Emir Alkal on 13.06.2023.
//

import Foundation

enum RMStatus: String, Decodable {
    case alive      = "Alive"
    case dead       = "Dead"
    case unknown    = "unknown"
}
