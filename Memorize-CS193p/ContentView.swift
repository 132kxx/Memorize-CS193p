//
//  ContentView.swift
//  Memorize-CS193p
//
//  Created by kxx: on 2022/10/04.
//

import SwiftUI

struct ContentView: View {
    var emojis:[String] = ["airplane", "car", "train", "taxi"]
    @State var emojiCount = 3
    
    var body: some View {
        VStack {
            HStack {
                ForEach(emojis[0 ..< emojiCount], id:\.self) { emoji in
                    CardView(content: emoji)
                }

            }
            Button {
                emojiCount += 1
            } label: {
                Text("Add card")
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
                    shape.stroke(lineWidth: 3)
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
        ContentView()
            .preferredColorScheme(.dark)
    }
}


