//
//  HandView.swift
//  PlayBull
//
//  Created by Heejung Chung on 3/15/17.
//  Copyright © 2017 hjchung. All rights reserved.
//

import UIKit

@IBDesignable class HandView: UIStackView {

    //MARK: Properties
    
    //TODO: change this when Hand class implemented
    var hand = Deck()
    var cardViews = [UIView]()
    
    
    //MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCards()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupCards()
    }
    
    //MARK: Private functions
    
    private func setupCards() {
        let aspectRatio: CGFloat = 3/5
        for card in hand.cards {
            let cardView = CardView()
            cardView.card = card
            // autolayout
            cardView.translatesAutoresizingMaskIntoConstraints = false
            cardView.heightAnchor.constraint(equalTo: layoutMarginsGuide.heightAnchor)
            cardView.widthAnchor.constraint(equalTo: cardView.heightAnchor, multiplier: aspectRatio).isActive = true
            // add to stack view
            addArrangedSubview(cardView)
            cardViews.append(cardView)
        }
    }
}
