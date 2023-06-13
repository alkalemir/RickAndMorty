//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by Emir Alkal on 13.06.2023.
//

import Foundation

struct RMEpisode: Decodable {
    let id: Int
    let name: String
    let air_date: String
    let apisode: String
    let characters: [String]
    let url: String
    let created: String
}
