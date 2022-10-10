//
//  EmojiMemoryGame.swift
//  Memorize-CS193p
//
//  Created by kxx: on 2022/10/09.
//

import SwiftUI



class EmojiMemoryGame  {
    
  static  let emojis = ["a", "b", "c", "d", "e", "f","g","h","i","j"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberofPairsOfCards: 2) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    private(set) var model: MemoryGame<String> = createMemoryGame()
 
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
