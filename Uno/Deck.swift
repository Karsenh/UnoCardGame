//
//  Deck.swift
//  Uno
//
//  Created by Karsen Hansen on 9/22/20.
//  Copyright © 2020 Karsen Hansen. All rights reserved.
//

import Foundation
 
// MARK: - DECK STRUCT
struct Deck {
    
    //MARK: - PROPERTIES
    var color: [String] = ["🟢", "🔴", "🟡", "🔵"]
    var faceValue: [String] = []
    var drawPile: [Card] = []
    var discardPile: [Card] = []
    
    // MARK: - BEHAVIORS
    // Initialize a GameDeck's drawPile with Card objects 0...9 of every color
    // followed by 1...9 of every color (to omit second set of 0's)
    // followed by special cards (reverse, block, etc.) of every color
    // followed by wild & wild draw four
    // Finally, flip one random card from drawPile into discardPile to begin the game
    mutating func initializeDeck() {
        // Insert
        for color in color {
            for i in 0...9 {
                self.drawPile.append(Card(faceValue: String(i), color: color))
            }
            for i in 1...9 {
                self.drawPile.append(Card(faceValue: String(i), color: color))
            }
        }
        let randIndex = Int.random(in: 1...self.drawPile.count - 1)
        self.discardPile.append(self.drawPile[randIndex])
        self.drawPile.remove(at: randIndex)
    }
    
    
    
    // MARK: - DEBUGGING
    func printDeckState() {
        print("DRAW PILE = \(drawPile)")
        print("DISCARD PILE = \(discardPile)")
    }

    
}
