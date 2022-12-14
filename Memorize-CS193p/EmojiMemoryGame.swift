//
//  EmojiMemoryGame.swift
//  Memorize-CS193p
//
//  Created by kxx: on 2022/10/09.
//

import SwiftUI



class EmojiMemoryGame: ObservableObject  {
    
  static let emojis = ["a", "b", "c", "d", "e", "f","g","h","i","j"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberofPairsOfCards: 2) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
 
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    
    // MARK: - Intent(s)
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
    
}
