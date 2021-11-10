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
        VStack(alignment: .center, spacing: 5) {
            
            // Invisible rectangle
            Rectangle()
                .frame(width: 500, height: 20, alignment: .center)
            // Name
            Text(stat.archerName)
                .font(Font.custom("Helvetica Neue", size: 40).bold().italic())
            // Decoration
            ZStack {
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 450, height: 35, alignment: .topLeading)
                Text("ARCHERY ARCHERY ARCHERY")
                    .font(Font.custom("Avenir Next", size: 25).italic().bold())
                    .foregroundColor(.white)
            }
            Spacer()
            // Photo
            ZStack {
                Circle()
                    .fill(Color.black)
                    .frame(width: 390, height: 390, alignment: .center)
                Circle()
                    .fill(Color.blue)
                    .frame(width: 370, height: 380, alignment: .center)
                Circle()
                    .fill(Color.red)
                    .frame(width: 345, height: 370, alignment: .center)
                Image(stat.imageName)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .padding()
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
                
                // Decoration
                ZStack {
                    Rectangle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.white, .red, .blue]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 35, height: 250, alignment: .bottomTrailing)
                    
                    Text("KOREA")
                        .rotationEffect(Angle(degrees: 90))
                        .font(Font.custom("Avenir Next", size: 25).italic().bold())
                        .foregroundColor(.white)
                }
                .padding(.vertical, 10)
                .frame(width: 110, height: 200, alignment: .bottom)
            }
            
            // invisible rectangle
            Rectangle()
                .frame(width: 500, height: 90, alignment: .center)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(stat: listOfStats.first!)
        }
    }
}
