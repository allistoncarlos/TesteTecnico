//
//  CardDetailView.swift
//  TesteTecnico
//
//  Created by Alliston Aleixo on 31/07/23.
//

import SwiftUI

// MARK: - CardDetailViewLogic

protocol CardDetailViewLogic {
    func fetch(_ viewModel: CardModels.FetchDetail.ViewModel)
}

// MARK: - CardDetailView

struct CardDetailView: View {
    @ObservedObject var model: CardModels.FetchDetail.ViewModel
    var id: String

    var interactor: CardInteractorLogic?

    var body: some View {
        NavigationView {
            if let card = model.card {
                Text("\(card.name)")
                    .navigationBarTitle("\(card.name)", displayMode: .large)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        .onAppear {
            Task {
                await interactor?.fetchDetail(id: id)
            }
        }
    }
}

// MARK: CardDetailViewLogic

extension CardDetailView: CardDetailViewLogic {
    func fetch(_ viewModel: CardModels.FetchDetail.ViewModel) {
        DispatchQueue.main.sync {
            model.card = viewModel.card
        }
    }
}

// MARK: - CardDetailView_Previews

struct CardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailView(model: CardModels.FetchDetail.ViewModel(), id: "HERO_11bpt")
    }
}
