//
//  ContentView.swift
//  Memorize-CS193p
//
//  Created by kxx: on 2022/10/04.
//

import SwiftUI

struct ContentView: View {
    var emojis:[String] = ["a", "b", "c", "d", "e", "f"]
    @State var emojiCount = 4
    
    var body: some View {
        VStack {
            HStack {
                ForEach(emojis[0 ..< emojiCount], id:\.self) { emoji in
                    CardView(content: emoji)
                }

            }
            
            Spacer()

            HStack {
                Spacer()
                remove
                Spacer()
                Text("Shuffle")
                Spacer()
                add
                Spacer()
            }
            .font(.largeTitle)
            .padding(.horizontal)


        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
    
    var remove: some View {
        Button {
            if emojiCount > 1 {
                emojiCount -= 1
            }
        } label: {
            Image(systemName: "minus.circle")
        }
        
    }

    var add: some View {
        Button {
            if (emojiCount != emojis.count) {
                emojiCount += 1
            }
        } label: {
            Image(systemName: "plus.circle")
        }
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

    }
}


