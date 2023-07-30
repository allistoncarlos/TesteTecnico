//
//  CardInteractor.swift
//  TesteTecnico
//
//  Created by Alliston Aleixo on 28/07/23.
//

import Foundation

// MARK: - CardInteractorLogic

protocol CardInteractorLogic: AnyObject {
    func fetch() async
}

// MARK: - CardInteractor

class CardInteractor: CardInteractorLogic {

    // MARK: Lifecycle

    init(cardApiWorker: CardAPIWorker = CardAPIWorker()) {
        self.cardApiWorker = cardApiWorker
    }

    // MARK: Internal

    let cardApiWorker: CardAPIWorker
    var presenter: CardPresenterLogic?

    func fetch() async {
        let cards = await cardApiWorker.fetch()
        let response = CardModels.Fetch.Response(cards: cards)
        presenter?.fetch(response)
    }
}
