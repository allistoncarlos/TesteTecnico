//
//  CardDetailAPIModel.swift
//  TesteTecnico
//
//  Created by Alliston Aleixo on 31/07/23.
//

import Foundation

struct CardDetailAPIModel: Codable, Equatable, Hashable {
    enum CodingKeys: String, CodingKey {
        case cardId
        case name
    }

    let cardId: String
    let name: String
}
