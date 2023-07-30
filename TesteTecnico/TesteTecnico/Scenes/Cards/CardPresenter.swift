//
//  CardPresenter.swift
//  TesteTecnico
//
//  Created by Alliston Aleixo on 28/07/23.
//

import Foundation

// MARK: - CardPresenterLogic

protocol CardPresenterLogic: AnyObject {
    func fetch(_ response: CardModels.Fetch.Response)
}

// MARK: - CardPresenter

class CardPresenter: CardPresenterLogic {
    var view: CardsViewLogic?

    func fetch(_ response: CardModels.Fetch.Response) {
        let cards = response.cards.map { card in
            CardAPIModel(
                id: card.id,
                name: card.name,
                description: card.description,
                source: card.source,
                enabled: card.enabled,
                img: card.img,
                imgAnimated: card.imgAnimated,
                sortCategory: card.sortCategory,
                sortOrder: card.sortOrder,
                locale: card.locale
            )
        }

        let viewModel = CardModels.Fetch.ViewModel()
        viewModel.cards = cards.sorted { card1, card2 in
            card1.sortOrder < card2.sortOrder
        }
        view?.fetch(viewModel)
    }
}
