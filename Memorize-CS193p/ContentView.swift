//
//  ContentView.swift
//  Memorize-CS193p
//
//  Created by kxx: on 2022/10/04.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        HStack {
            CardView()
            CardView()
            CardView()
            CardView()
        }
        .padding(.horizontal)
    }
}

struct CardView: View {
    var body: some View {
            ZStack {
               RoundedRectangle(cornerRadius: 25)
                    .stroke(lineWidth: 3)
                    .foregroundColor(.orange)
                
                Text("🚂")

            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


