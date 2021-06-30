//
//  ContentView.swift
//  memorize
//
//  Created by Caio Tadashi on 29/06/21.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🚘","✈️","🚀","🚁"]
    
    var body: some View {
        HStack {
            ForEach(emojis, id: \.self, content: { emoji in
                CardView(content: emoji)
            })
        }
        .padding(.horizontal)
        .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 4)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture{
            isFaceUp = !isFaceUp
        }
    }
}































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
