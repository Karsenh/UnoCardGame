//
//  Player.swift
//  Uno
//
//  Created by Karsen Hansen on 9/22/20.
//  Copyright © 2020 Karsen Hansen. All rights reserved.
//

import Foundation

// MARK: - PLAYER STRUCT
struct Player {
    
    // MARK: - PLAYER PROPERTIES
    var pHand: [Card] = []
    
    // MARK: - PLAYER BEHAVIORS
    // Initialize player hand with 7 cards from gameDeck.drawPile & remove selected cards
    mutating func initializeHand() {
        var i = 0
        // While player hand is less than 7 cards
        while i < 7 {
            // Create a random index location to draw a card from drawPile
            self.radomDraw()
            i += 1
        }
    }
    
    // Randomly draws a card to the pHand of the Player object that calls on this instance method
    mutating func radomDraw() {
        let selectedCardIndex = Int.random(in: 1...gameDeck.drawPile.count - 1)
        self.pHand.append(gameDeck.drawPile[selectedCardIndex])
        gameDeck.drawPile.remove(at: selectedCardIndex)
    }
    
    func playersTurn() {
        // Check player hand to see if any playable cards
        if player1.pHand.contains(gameDeck.discardPile[0]) {
            print("Test")
        }
        if (player1.pHand.contains { card in gameDeck.discardPile.contains(card.color) || gameDeck.discardPile.contains(card.faceValue) } ) {
            print("Test")
        }
        // If so - ask player if they want to play a card or draw
        // If not - ask player to draw a card
        // If the drawn card is playable - ask the player if they want to play the card
        // If not - end turn
        print("Select a card (index) to play")
        let selectedCardIndex = readLine()
    }
    
    func computersTurn() {
        
    }
    
    // MARK: - PLAYER DEBUGGING
    func printHand() {
        print(self.pHand)
    }
    
    
}
