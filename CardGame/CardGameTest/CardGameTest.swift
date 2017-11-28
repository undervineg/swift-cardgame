//
//  CardGameTest.swift
//  CardGameTest
//
//  Created by 심 승민 on 2017. 11. 24..
//  Copyright © 2017년 JK. All rights reserved.
//

import XCTest

class CardGameTest: XCTestCase {

    func testCardInstanceOfClubK() {
        let shape = Shape.clubs
        let number = Number.king
        let card = Card(shape, number)
        XCTAssertEqual(card.description, "♣️K")
    }

    func testCardInstanceOfHeart7() {
        let shape = Shape.hearts
        let number = Number.seven
        let card = Card(shape, number)
        XCTAssertEqual(card.description, "♥️7")
    }

    func testCountOfDefaultDeck() {
        let deck = Deck()
        XCTAssertEqual(deck.count, 52)
    }

    func testRemoveCardFromDeck() {
        var deck = Deck()
        deck.shuffle()
        // 5장 뽑은 후 개수 확인.
        for _ in 0..<5 {
            deck.removeOne()
        }
        XCTAssertEqual(deck.count, 52-5)
    }

}
