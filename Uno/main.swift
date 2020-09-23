//
//  main.swift
//  Uno
//
//  Created by Karsen Hansen on 9/20/20.
//  Copyright © 2020 Karsen Hansen. All rights reserved.
//

import Foundation

// 1. Create an array of Card objects (Deck)
// 2. Create 2 hands (players / computer)

var currGame = Game()
var gameDeck = Deck()
var player1 = Player()
var player2 = Player()

currGame.playGame(Player1: player1, Player2: player2)
