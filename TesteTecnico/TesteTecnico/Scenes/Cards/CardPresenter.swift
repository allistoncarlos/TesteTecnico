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
    func fetchDetail(_ response: CardModels.FetchDetail.Response)
}

// MARK: - CardPresenter

class CardPresenter: CardPresenterLogic {
    var cardsView: CardsViewLogic?
    var cardDetailView: CardDetailViewLogic?

    func fetch(_ response: CardModels.Fetch.Response) {
        if let cards = response.cards {
            let viewModel = CardModels.Fetch.ViewModel()
            viewModel.cards = cards.fullSets
            cardsView?.fetch(viewModel)
        }
    }

    func fetchDetail(_ response: CardModels.FetchDetail.Response) {
        let viewModel = CardModels.FetchDetail.ViewModel()
        viewModel.card = response.card
        cardDetailView?.fetch(viewModel)
    }
}
