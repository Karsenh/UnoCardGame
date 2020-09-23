//
//  Game.swift
//  Uno
//
//  Created by Karsen Hansen on 9/22/20.
//  Copyright © 2020 Karsen Hansen. All rights reserved.
//

import Foundation

// MARK: - GAME CLASS
class Game {
    // MARK: - GAME PROPERTIES
    
    func playGame(Player1: Player, Player2: Player) {
        // Initialize a new gameDeck with an array of appropriate cards
        gameDeck.initializeDeck()
        // Print deck for Debugging
        gameDeck.printDeckState()
        
        // Debugging
        print("Initializing Hands")
        // Initializing Player1's Hands with 7 cards from gameDeck.drawPile
        player1.initializeHand()
        print("Player 1's hand = \(player1.printHand())")
        // Initializing Player2's Hands with 7 cards from gameDeck.drawPile
        player2.initializeHand()
        print("Player 2's hand = \(player2.printHand())")

        Player1.playersTurn()
//        while !isGameOver(between: Player1, and: Player1) {
//            // Player 1 Turn
//
//            // Player 2 Turn
//        }
    }
    // MARK: - GAME BEHAVIORS
    // Checks if game is over by validating the number of cards in each players hand
    // The first player to achieve 0 cards Wins
    // 0 cards returns true, otherwise isGameOver = false
    func isGameOver(between p1: Player, and p2: Player) -> Bool {
        if p1.pHand.count < 0 {
            print("Congratulations! - You Win!")
            return true
        } else if p2.pHand.count < 0 {
            print("Game Over! - You Lose.")
            return true
        } else {
            return false
        }
    }
}
