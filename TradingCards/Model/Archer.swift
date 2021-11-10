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
    let debutDate: String
    let age: String
    let bestScore: String
    let winningPercentage: String
    let worldRanking: String
    let averageScore: String
}

let listOfStats = [
    
    Archer(archerName: "An San", imageName: "An San", debutDate: "International Debut: 2019", age: "Age: 20", bestScore: "Best Score: 684/720", winningPercentage: "Winning Percentage: 76%", worldRanking: "World Ranking: 1", averageScore: "Average Score Per Arrow: 9.4")
    
    ,
    
    Archer(archerName: "Kim Woo-Jin", imageName: "Kim Woo Jin", debutDate: "International Debut: 2009", age: "Age: 29", bestScore: "Best Score: 700/720", winningPercentage: "Winning Percentage: 81%", worldRanking: "World Ranking: 3", averageScore: "Average Score Per Arrow: 9.6")
    
    ,
    
    Archer(archerName: "Oh Jin-Hyek", imageName: "Oh Jin Hyek", debutDate: "International Debut: 1999", age: "Age: 40", bestScore: "Best Score: 691/720", winningPercentage: "Winning Percentage: 74%", worldRanking: "World Ranking: 26", averageScore: "Average Score Per Arrow: 9.4")
    
    ,
    
    Archer(archerName: "Kim Je-Deok", imageName: "Kim Je Deok", debutDate: "International Debut: 2019", age: "Age: 17", bestScore: "Best Score: 688/720", winningPercentage: "Winning Percentage: 88%", worldRanking: "World Ranking: 50", averageScore: "Average Score Per Arrow: 9.5")
    
    ,
    
    Archer(archerName: "Kang Chae-Young", imageName: "Kang Chae Young", debutDate: "International Debut: 2015", age: "Age: 25", bestScore: "Best Score: 692/720", winningPercentage: "Winning Percentage: 85%", worldRanking: "World Ranking: 7", averageScore: "Average Score Per Arrow: 9.3")
]
