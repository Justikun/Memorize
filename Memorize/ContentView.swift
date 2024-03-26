//
//  ContentView.swift
//  Memorize
//
//  Created by Justin Lowry on 3/25/24.
//

import SwiftUI

struct ContentView: View {
    let emojis: Array<String> = ["👻", "🎃", "🕷️", "💀"]
    
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundStyle(.orange)
        .padding()
    }
}

#Preview {
    ContentView()
}

/// - parameters:
///     - isFaceUp: determines if card is face up or not
struct CardView: View {
    let content: String
    @State var isFaceUp = true
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            
            if isFaceUp {
                base.foregroundStyle(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base
            }
        }
        .onTapGesture {
            print("tapped")
            isFaceUp.toggle()
        }
    }
}
