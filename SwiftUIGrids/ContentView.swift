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
        //GridItem(.flexible()),
        //GridItem(.flexible()),
        //GridItem(.flexible())
        GridItem(.adaptive(minimum: 100))
    ]
    
    let columnsForHorizontal = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack {
            Text("SwiftUI Grids").padding()
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(emoijs, id: \.self) { emoji in
                        Text(emoji)
                            .font(.system(size: 100))
                    }
                }
            }
            ScrollView(.horizontal) {
                LazyHGrid(rows: columnsForHorizontal, spacing: 60) {
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
