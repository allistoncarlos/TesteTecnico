//
//  CardAPIModel.swift
//  TesteTecnico
//
//  Created by Alliston Aleixo on 28/07/23.
//

import Foundation

struct CardAPIModel: Codable, Equatable, Hashable {
    enum CodingKeys: String, CodingKey {
        case id = "cardBackId"
        case name, description, source, enabled, img, imgAnimated, sortCategory, sortOrder, locale
    }

    enum Locale: String, Codable {
        case enUS
    }

    let id: Int
    let name: String
    let description: String?
    let source: String
    let enabled: Bool
    let img, imgAnimated: String?
    let sortCategory, sortOrder: Int
    let locale: Locale
}
