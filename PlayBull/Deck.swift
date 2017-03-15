//
//  Deck.swift
//  PlayBull
//
//  Created by Heejung Chung on 3/15/17.
//  Copyright © 2017 hjchung. All rights reserved.
//

import Foundation

class Deck {
    
    var cards: [Card]

    init() {
        //Load cards
        cards = [Card]()
        for value in Card.Rank.allRanks {
            for suit in Card.Suit.allSuits {
                cards.append( Card(suit: suit, rank: value) )
            }
        }
    }
    
    func dealCard() -> Card? {
        if cards.count < 1 {
            return nil
        } else {
            let randIndex = Int(arc4random_uniform(UInt32(cards.count)))
            let card = cards.remove(at: randIndex)
            return card
        }
    }
    
    func receiveCard(_ card: Card) {
        cards.append(card)
    }
}

extension Array {
    func randomItem() -> Element? {
        if count < 1 {
            return nil
        } else {
            let index = Int(arc4random_uniform(UInt32(count)))
            return self[index]
        }
    }
}
