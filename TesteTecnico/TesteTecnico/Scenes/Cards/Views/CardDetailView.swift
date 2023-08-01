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
        ScrollView {
            VStack {
                if let card = model.card {
                    if let imageUrl = card.img {
                        ImageView(urlString: imageUrl)
                            .frame(height: 250)
                    }

                    if let flavor = card.flavor {
                        Text(flavor)
                            .font(.subheadline)
                            .padding(.bottom, 10)
                    }

                    if let text = card.text {
                        Text(text)
                            .font(.subheadline)
                            .padding(.bottom, 10)
                    }

                    HStack {
                        Text("Set: \(card.cardSet)")
                            .font(.subheadline)

                        Text("Type: \(card.type)")
                            .font(.subheadline)

                        if let rarity = card.rarity {
                            Text("Rarity: \(rarity)")
                                .font(.subheadline)
                        }
                    }
                    .padding(.bottom, 10)

                    if let mechanics = card.mechanics {
                        Text("Mechanics")
                            .font(.headline)
                            .padding(.top, 10)

                        HStack {
                            ForEach(mechanics, id: \.self) { mechanic in
                                Text(mechanic.name)
                                    .font(.subheadline)
                                    .padding(.bottom, 10)
                            }
                        }
                    }

                    HStack(alignment: .top) {
                        if let cost = card.cost {
                            Text("Cost: \(cost)")
                                .font(.subheadline)
                                .padding(.bottom, 10)
                        }

                        if let health = card.health {
                            Text("Health: \(health)")
                                .font(.subheadline)
                        }
                    }

                    Spacer()
                }
            }
            .navigationBarTitle(model.card?.name ?? "")
            .padding([.leading, .trailing], 10)
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
        CardDetailView(model: CardModels.FetchDetail.ViewModel(), id: "YOD_041")
    }
}
