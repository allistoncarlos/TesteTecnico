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
}

// MARK: - CardView

struct CardView: View {
    @ObservedObject var model: CardModels.Fetch.ViewModel

    var interactor: CardInteractorLogic?

    var body: some View {
        NavigationView {
            if model.cards.count > 0 {
                List(model.cards, id: \.id) { card in
                    NavigationLink(destination: Text("Second View")) {
                        Text(card.name)
                    }
                }
                .navigationBarTitle("Cards", displayMode: .large)
            } else {
                Text("VAZIO")
            }
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
}

// MARK: - CardView_Previews

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(model: CardModels.Fetch.ViewModel())
    }
}
