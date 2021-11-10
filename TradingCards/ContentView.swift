//
//  ContentView.swift
//  TradingCards
//
//  Created by Eunbi Shin on 2021-11-08.
//

import SwiftUI

struct ContentView: View {
    let stat: Archer
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 5) {
                
                
                // Decoration
                ZStack {
                    Rectangle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .leading, endPoint: .trailing))
                        .frame(height: 35, alignment: .topLeading)
                    Text("ARCHERY ARCHERY ARCHERY")
                        .font(Font.custom("Avenir Next", size: 25).italic().bold())
                        .foregroundColor(.white)
                }
                Spacer()
                // Photo
                ZStack {
                    Circle()
                        .fill(Color.black)
                        .padding(20)
                    
                    Circle()
                        .fill(Color.blue)
                        .padding(40)
                    
                    Circle()
                        .fill(Color.red)
                        .padding(60)
                    
                    Image(stat.imageName)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .padding(80)
                }
                Spacer()
                
                HStack {
                    ZStack {
                        // Background
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.red)
                            .frame(width: 350, height: 230, alignment: .topLeading)
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.blue.opacity(0.55))
                            .frame(width: 370, height: 250, alignment: .topLeading)
                        // Stats
                        VStack(alignment: .leading, spacing: 3) {
                            Group {
                                Text(stat.debutDate)
                                Text(stat.age)
                                Text(stat.bestScore)
                                Text(stat.winningPercentage)
                                Text(stat.worldRanking)
                                Text(stat.averageScore)
                            }
                            .font(Font.custom("Avenir Next", size: 18).bold())
                            .foregroundColor(.white)
                            Spacer()
                                .frame(width: 100, height: 25, alignment: .topLeading)
                        }
                    }
                    
                    Spacer()
                    
                    // Decoration
                    VStack {
                        Spacer()
                        
                        ZStack {
                            Rectangle()
                                .fill(LinearGradient(gradient: Gradient(colors: [.white, .red, .blue]), startPoint: .top, endPoint: .bottom))
                                .frame(width: 35, height: 250, alignment: .bottomTrailing)
                            
                            Text("KOREA")
                                .rotationEffect(Angle(degrees: 90))
                                .font(Font.custom("Avenir Next", size: 25).italic().bold())
                                .foregroundColor(.white)
                        }
                        .frame(width: 110, height: 200, alignment: .bottom)
                    }
                }
            }
            .padding()
        }
        .navigationTitle(stat.archerName)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(stat: listOfStats.first!)
        }
    }
}
