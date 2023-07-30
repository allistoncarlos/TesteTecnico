//
//  CardsAPIWorker.swift
//  TesteTecnico
//
//  Created by Alliston Aleixo on 28/07/23.
//

import Foundation

class CardAPIWorker {
    let API_URL = "https://omgvamp-hearthstone-v1.p.rapidapi.com/"

    let headers = [
        "X-RapidAPI-Key": "509dd47e0fmsh4504a2cfc9d4a42p1c5fd6jsn58ee100d8bc0",
        "X-RapidAPI-Host": "omgvamp-hearthstone-v1.p.rapidapi.com"
    ]

    func fetch() async -> [CardAPIModel] {
        let url = URL(string: "\(API_URL)cardbacks")!

        var request = URLRequest(
            url: url,
            cachePolicy: .useProtocolCachePolicy,
            timeoutInterval: 10.0
        )
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        do {
            let (data, _) = try await URLSession.shared.data(for: request)

            if let jsonString = String(data: data, encoding: .utf8) {
                print(jsonString)
            }

            let cards = try JSONDecoder().decode([CardAPIModel].self, from: data)
            return cards
        } catch {
            print("Erro na decodificação JSON: \(error.localizedDescription)")
        }

        return []
    }
}
