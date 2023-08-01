//
//  CardDetailAPIModel.swift
//  TesteTecnico
//
//  Created by Alliston Aleixo on 31/07/23.
//

import Foundation

// MARK: - MechanicAPIModel

struct MechanicAPIModel: Codable, Equatable, Hashable {
    let name: String
}

// MARK: - CardDetailAPIModel

struct CardDetailAPIModel: Codable, Equatable, Hashable {
    enum CodingKeys: String, CodingKey {
        case cardId
        case name
        case img
        case flavor
        case text
        case cardSet
        case type
        case playerClass
        case rarity
        case mechanics
        case cost
        case health
    }

    let cardId: String
    let name: String
    let img: String?
    let flavor: String?
    let text: String?
    let cardSet: String
    let type: String
    let playerClass: String?
    let rarity: String?
    let mechanics: [MechanicAPIModel]?
    let cost: Int?
    let health: Int?
}
