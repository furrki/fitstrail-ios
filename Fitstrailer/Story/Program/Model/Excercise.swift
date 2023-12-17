//
//  Excercise.swift
//  Fitstrailer
//
//  Created by Furkan Kaynar on 17.12.23.
//

import Foundation

// For example bench press, squat, deadlift, etc.
// Includes repeats, set counts, etc.
struct Excercise: Codable, Identifiable {
    var id: UUID = UUID()
    var name: String
    var description: String
    var repeats: Int
    var sets: Int
    var rest: Int
    var image: String
    var exampleVideo: String
    
    static func all() -> [Excercise] {
        return [
            Excercise(name: "Bench Press", description: "Bench Press Description", repeats: 10, sets: 3, rest: 60, image: "benchpress", exampleVideo: "https://www.youtube.com/watch?v=U4BS9EXFTOg"),
        ]
    }
}