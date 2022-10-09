//
//  ContentView.swift
//  Memorize-CS193p
//
//  Created by kxx: on 2022/10/04.
//

import SwiftUI

struct ContentView: View {
    var emojis:[String] = ["a", "b", "c", "d", "e", "f","g","h","i","j"]
    @State var emojiCount = 4
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 78))]) {
                    ForEach(emojis[0 ..< emojiCount], id:\.self) { emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
    
}



struct CardView: View {
    var content: String
    @State var isFaceup : Bool = true
    
    var body: some View {
            ZStack {
                let shape = RoundedRectangle(cornerRadius: 25)

                if isFaceup {
                    shape.fill().foregroundColor(.white)
                    shape.strokeBorder(lineWidth: 3)
                    Text(content).font(.largeTitle)
                } else {
                    RoundedRectangle(cornerRadius: 20)
                        .fill()
                }
            }
            .onTapGesture {
                isFaceup = !isFaceup
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)

    }
}


