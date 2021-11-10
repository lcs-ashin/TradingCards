//
//  CardsListView.swift
//  TradingCards
//
//  Created by Eunbi Shin on 2021-11-10.
//

import SwiftUI

struct CardsListView: View {
    let imageName: String
    let archerName: String
    
    var body: some View {
        List {
            ForEach(listOfStats) { currentStat in
                
                NavigationLink(destination: {
                    ContentView(stat: currentStat)
                }, label: {
                    HStack {
                        Image(currentStat.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50, alignment: .center)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .clipped()
                        VStack(alignment: .leading) {
                            Text(currentStat.archerName)
                                .bold()
                        }
                    }
                })
                
            }
        }
        .navigationTitle("Archers")
    }
}

struct CardsListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CardsListView(imageName: "An San", archerName: "An San")
        }
    }
}
