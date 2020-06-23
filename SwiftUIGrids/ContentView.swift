//
//  ContentView.swift
//  SwiftUIGrids
//
//  Created by Ramill Ibragimov on 23.06.2020.
//

import SwiftUI

struct ContentView: View {
    
    let emoijs = ["🥰", "😘", "😂", "😍", "🤪", "🤠", "😇", "😎", "😋"]
    
    let columns = [
        //GridItem(.flexible())
        GridItem(.adaptive(minimum: 100))
    ]
    
    var body: some View {
        VStack {
            Text("SwiftUI Grids").padding()
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(emoijs, id: \.self) { emoji in
                        Text(emoji)
                            .font(.system(size: 100))
                    }
                }
            }
        }.padding(.all, 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
