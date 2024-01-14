//
//  Program.swift
//  Fitstrailer
//
//  Created by Furkan Kaynar on 17.12.23.
//

import Foundation

// May contain various days. Uses Excercise class. Combines them.
struct Program: Codable, Identifiable {
    var id: UUID = UUID()
    var name: String
    var description: String
    var days: [Day]
    
    static func all() -> [Program] {
        return [
            Program(name: "5x5", description: "5x5 Description", days: [
                Day(name: "Day 1", description: "Day 1 Description", exercises: [
                    Exercise(order: 1, name: "Bench Press", description: "Bench Press Description", repeats: 10, sets: 3, rest: 60, image: "benchpress", exampleVideo: "https://www.youtube.com/watch?v=U4BS9EXFTOg")
                ]),
            ])
        ]
    }
}
