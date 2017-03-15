//
//  CardView.swift
//  PlayBull
//
//  Created by Heejung Chung on 3/15/17.
//  Copyright © 2017 hjchung. All rights reserved.
//

import UIKit

@IBDesignable class CardView: UIView {
    
    //MARK: Properties
    
    private var suitRankLabel: UILabel!

    var card: Card! {
        get {
            return self.card
        }
        set(newCard) {
            suitRankLabel.text = "\(newCard.rank.rawValue) \(newCard.suit.rawValue)"
        }
    }

    //MARK: Initialization
    
    override init(frame:CGRect) {
        super.init(frame: frame)
        initCard()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initCard()
    }
 
    private func initCard() {
        //add label
        suitRankLabel = UILabel()
        addSubview(suitRankLabel)
        suitRankLabel.translatesAutoresizingMaskIntoConstraints = false
        suitRankLabel.centerXAnchor.constraint(equalTo: layoutMarginsGuide.centerXAnchor).isActive = true
        suitRankLabel.centerYAnchor.constraint(equalTo: layoutMarginsGuide.centerYAnchor).isActive = true
        
        //format border
        layer.borderWidth = 1
        layer.borderColor = UIColor.gray.cgColor
    }
}
