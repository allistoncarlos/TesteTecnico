//
//  CardAPIWorkerTests.swift
//  TesteTecnicoTests
//
//  Created by Alliston Aleixo on 28/07/23.
//

import OHHTTPStubs
@testable import TesteTecnico
import XCTest

// MARK: - CardAPIWorkerTests

final class CardAPIWorkerTests: XCTestCase {

    // MARK: Internal

    var sut: CardAPIWorker!
    var stubRequest: StubRequests!

    override func setUpWithError() throws {
        sut = .init()
        stubRequest = StubRequests()
    }

    override func tearDownWithError() throws {
        sut = nil
        HTTPStubs.removeAllStubs()
    }

    func test_CardAPIWorker_WhenLoadCards_ShouldReturn() async {
        // Arrange
        stubGetCards()

        // Act
        let result = await sut.fetchCards()

        // Assert
        XCTAssertEqual(result?.fullSets.count, 4)
    }

    func test_CardAPIWorker_WhenLoadCardDetail_ShouldReturn() async {
        // Arrange
        let cardId = "YOD_041"
        stubGetCardDetail(id: cardId)

        // Act
        let result = await sut.fetchCardDetail(id: cardId)

        // Assert
        XCTAssertNotNil(result)
        XCTAssertNotNil(result?.mechanics)
        XCTAssertEqual(result?.name, "Eye of the Storm")
    }

    // MARK: Private

    private let mock = CardsResponseMock()

}

extension CardAPIWorkerTests {
    func stubGetCards() {
        let fakeJSONResponse = mock.successCardsResponse

        stubRequest.stubJSONResponse(
            jsonObject: fakeJSONResponse,
            header: nil,
            statusCode: 200,
            absoluteStringWord: "omgvamp-hearthstone-v1.p.rapidapi.com/cards"
        )
    }

    func stubGetCardDetail(id: String) {
        let fakeJSONResponse = mock.successCardDetailResponse

        stubRequest.stubJSONResponse(
            jsonObject: fakeJSONResponse,
            header: nil,
            statusCode: 200,
            absoluteStringWord: "omgvamp-hearthstone-v1.p.rapidapi.com/cards/\(id)"
        )
    }
}
