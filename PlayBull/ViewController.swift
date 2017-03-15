//
//  ViewController.swift
//  PlayBull
//
//  Created by Heejung Chung on 3/14/17.
//  Copyright © 2017 hjchung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var deck = Deck()
    var myHand = Hand()
    var otherHands = [Hand]()
    
    @IBOutlet weak var currentRankLabel: UILabel!
    @IBOutlet weak var bsButton: UIButton!
    @IBOutlet weak var chooseCardsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

