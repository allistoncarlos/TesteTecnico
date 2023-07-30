//
//  CardModels.swift
//  TesteTecnico
//
//  Created by Alliston Aleixo on 28/07/23.
//

import Foundation

enum CardModels {
    enum Fetch {
        struct Request {}
        struct Response { var cards: [CardAPIModel] }

        class ViewModel: ObservableObject {
            @Published var cards: [CardAPIModel] = []
        }
    }
}
