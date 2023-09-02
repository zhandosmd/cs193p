//
//  ContentView.swift
//  cs193p
//
//  Created by Жандос Медетов on 02.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        HStack{
            CardView(emoji: "🍊")
            CardView(isFaceUp: true)
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View{
    var emoji: String = "🥑"
    var isFaceUp: Bool = false
    
    var body: some View{
        ZStack {
            if(isFaceUp){
                RoundedRectangle(cornerRadius: 12).foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12).strokeBorder(lineWidth: 2)
                Text(emoji)
            }else {
                RoundedRectangle(cornerRadius: 12)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
