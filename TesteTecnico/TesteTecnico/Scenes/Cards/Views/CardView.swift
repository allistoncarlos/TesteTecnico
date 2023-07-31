//
//  CardView.swift
//  TesteTecnico
//
//  Created by Alliston Aleixo on 28/07/23.
//

import SwiftUI

// MARK: - CardsViewLogic

protocol CardsViewLogic {
    func fetch(_ viewModel: CardModels.Fetch.ViewModel)
    func showDetail(id: String) -> AnyView
}

// MARK: - CardView

struct CardView: View {
    @ObservedObject var model: CardModels.Fetch.ViewModel

    var interactor: CardInteractorLogic?

    var body: some View {
        NavigationView {
            Group {
                if let cards = model.cards {
                    if cards.count > 0 {
                        List(cards, id: \.cardId) { card in
                            NavigationLink(destination: showDetail(id: card.cardId)) {
                                if let set = card.cardSet {
                                    Text("\(card.name) - [\(set)]")
                                } else {
                                    Text(card.name)
                                }
                            }
                        }
                    } else {
                        LoadingView(style: .large)
                    }
                }
            }
            .navigationBarTitle("Cards", displayMode: .large)
        }
        .edgesIgnoringSafeArea(.bottom)
        .onAppear {
            Task {
                await interactor?.fetch()
            }
        }
    }
}

// MARK: CardsViewLogic

extension CardView: CardsViewLogic {
    func fetch(_ viewModel: CardModels.Fetch.ViewModel) {
        DispatchQueue.main.sync {
            model.cards = viewModel.cards
        }
    }

    func showDetail(id: String) -> AnyView {
        var view = CardDetailView(
            model: CardModels.FetchDetail.ViewModel(),
            id: id
        )
        let interactor = CardInteractor()
        let presenter = CardPresenter()

        view.interactor = interactor
        interactor.presenter = presenter
        presenter.cardDetailView = view

        return AnyView(view)
    }
}

// MARK: - CardView_Previews

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(model: CardModels.Fetch.ViewModel())
    }
}
