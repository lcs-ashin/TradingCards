//
//  Archer.swift
//  TradingCards
//
//  Created by Eunbi Shin on 2021-11-09.
//

import Foundation

struct Archer: Identifiable {
    // Stored Properties
    let id = UUID()
    let archerName: String
    let imageName: String
    let debutDate: Int
    let age: Int
    let bestScore: Int
    let winningPercentage: Int
    let worldRanking: Int
    let averageScore: Double
}

let listOfStats = [
    
    Archer(archerName: "An San", imageName: "An San", debutDate: 2019, age: 20, bestScore: 684, winningPercentage: 76, worldRanking: 1, averageScore: 9.4)
]
