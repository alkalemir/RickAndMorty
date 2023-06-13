//
//  RMGender.swift
//  RickAndMorty
//
//  Created by Emir Alkal on 13.06.2023.
//

import Foundation

enum RMGender: String, Decodable {
    case female         = "Female"
    case male           = "Male"
    case genderless     = "Genderless"
    case unknown        = "unknown"
}
