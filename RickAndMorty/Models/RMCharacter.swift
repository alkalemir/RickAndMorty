//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by Emir Alkal on 13.06.2023.
//

import Foundation

struct RMCharacter: Decodable {
    let id: Int
    let name: String
    let status: RMStatus
    let species: String
    let type: String
    let gender: RMGender
    let origin: RMOrigin
    let location: RMOrigin
    let image: String
    let episode: [String]
    let url: String
    let created: String
}
