//
//  TradingCardsApp.swift
//  TradingCards
//
//  Created by Eunbi Shin on 2021-11-08.
//

import SwiftUI

@main
struct TradingCardsApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(stat: listOfStats.first!)
            }
        }
    }
}
