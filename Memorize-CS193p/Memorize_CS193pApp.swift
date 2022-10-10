//
//  Memorize_CS193pApp.swift
//  Memorize-CS193p
//
//  Created by kxx: on 2022/10/04.
//

import SwiftUI

@main
struct Memorize_CS193pApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
