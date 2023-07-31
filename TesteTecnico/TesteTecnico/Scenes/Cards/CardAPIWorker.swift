//
//  CardsAPIWorker.swift
//  TesteTecnico
//
//  Created by Alliston Aleixo on 28/07/23.
//

import Foundation

// MARK: - APIWorker

class APIWorker {

    // MARK: Internal

    let API_URL = "https://omgvamp-hearthstone-v1.p.rapidapi.com/"

    let headers = [
        "X-RapidAPI-Key": "509dd47e0fmsh4504a2cfc9d4a42p1c5fd6jsn58ee100d8bc0",
        "X-RapidAPI-Host": "omgvamp-hearthstone-v1.p.rapidapi.com"
    ]

    func fetch<T: Codable>(_ t: T.Type, action: String) async -> T? {
        let url = URL(string: "\(API_URL)\(action)")!

        var request = URLRequest(
            url: url,
            cachePolicy: .returnCacheDataElseLoad
        )
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        do {
            let (data, _) = try await session.data(for: request)

            let result = try JSONDecoder().decode(T.self, from: data)
            return result
        } catch {
            print("Erro na decodificação JSON: \(error.localizedDescription)")
        }

        return nil
    }

    func fetch<T: Codable>(_ t: T.Type, action: String, id: String) async -> T? {
        let url = URL(string: "\(API_URL)\(action)/\(id)")!

        var request = URLRequest(
            url: url,
            cachePolicy: .returnCacheDataElseLoad
        )
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        do {
            let (data, _) = try await session.data(for: request)

            if let jsonString = String(data: data, encoding: .utf8) {
                print(jsonString)
            }

            let result = try JSONDecoder().decode([T].self, from: data)
            return result.first
        } catch {
            print("Erro na decodificação JSON: \(error.localizedDescription)")
        }

        return nil
    }

    // MARK: Private

    private lazy var session: URLSession = {
        URLCache.shared.memoryCapacity = 1024 * 1024 * 1024

        let configuration = URLSessionConfiguration.default
        configuration.requestCachePolicy = .returnCacheDataElseLoad

        return URLSession(configuration: configuration)
    }()

}

// MARK: - CardAPIWorker

class CardAPIWorker: APIWorker {
    func fetchCards() async -> CardAPIModel? {
        return await super.fetch(CardAPIModel.self, action: "cards")
    }

    func fetchCardDetail(id: String) async -> CardDetailAPIModel? {
        return await super.fetch(CardDetailAPIModel.self, action: "cards", id: id)
    }
}
