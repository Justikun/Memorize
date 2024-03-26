//
//  ContentView.swift
//  Memorize
//
//  Created by Justin Lowry on 3/25/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
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
    
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundStyle(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text("👻")
                    .font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)
            }
        }
    }
}
