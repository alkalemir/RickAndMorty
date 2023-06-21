//
//  GetAllCharacters.swift
//  RickAndMorty
//
//  Created by Emir Alkal on 21.06.2023.
//

import Foundation

struct GetAllCharacters: Decodable {
    let info: Info
    let results: [RMCharacter]
}

struct Info: Decodable {
    let count: Int
    let pages: Int
    let next: String?
    let prev: String?
}
