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
        struct Response { var cards: CardAPIModel? }

        class ViewModel: ObservableObject {
            @Published var cards: [Card]? = []
        }
    }

    enum FetchDetail {
        struct Request {}
        struct Response { var card: CardDetailAPIModel? }

        class ViewModel: ObservableObject {
            @Published var card: CardDetailAPIModel?
        }
    }
}
