//
//  File.swift
//  PlayBull
//
//  Created by Heejung Chung on 3/15/17.
//  Copyright © 2017 hjchung. All rights reserved.
//

import Foundation

class Card {
    enum Suit: String {
        case Hearts   = "♥︎"
        case Diamonds = "♦︎"
        case Clubs    = "♣︎"
        case Spades   = "♠︎"

        static let allSuits = [Hearts, Diamonds, Clubs, Spades]
    }
    enum Rank: String {
        case Ace   = "A"
        case Two   = "2"
        case Three = "3"
        case Four  = "4"
        case Five  = "5"
        case Six   = "6"
        case Seven = "7"
        case Eight = "8"
        case Nine  = "9"
        case Ten   = "10"
        case Jack  = "J"
        case Queen = "Q"
        case King  = "K"
        
        static let allRanks = [Ace, Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten, Jack, Queen, King]
    }
    
    var suit: Suit
    var rank: Rank
    
    static let maxRank = 13
    
    init(suit: Suit, rank: Rank) {
        self.suit = suit
        self.rank = rank
    }
}
