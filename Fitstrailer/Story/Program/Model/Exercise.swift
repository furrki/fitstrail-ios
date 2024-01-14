//
//  Exercise.swift
//  Fitstrailer
//
//  Created by Furkan Kaynar on 17.12.23.
//

import Foundation

// For example bench press, squat, deadlift, etc.
// Includes repeats, set counts, etc.
struct Exercise: Codable, Identifiable {
    var id: UUID = UUID()
    var order: Int
    var name: String
    var description: String
    var repeats: Int
    var sets: Int
    var rest: Int
    var image: String
    var exampleVideo: String
    
    static func all() -> [Exercise] {
        return [
            Exercise(order: 1, name: "Bench Press" , description: "Bench Press Description", repeats: 5, sets: 5, rest: 90, image: "benchpress", exampleVideo: "https://www.youtube.com/watch?v=U4BS9EXFTOg"),
            Exercise(order: 2, name: "Squat", description: "Squat Description", repeats: 5, sets: 5, rest: 90, image: "squat", exampleVideo: "https://www.youtube.com/watch?v=QKKZ9AGYTi4"),
            Exercise(order: 3, name: "Deadlift", description: "Deadlift Description", repeats: 5, sets: 5, rest: 90, image: "deadlift", exampleVideo: "https://www.youtube.com/watch?v=op9kVnSso6Q"),
            Exercise(order: 4, name: "Barbell Row", description: "Barbell Row Description", repeats: 5, sets: 5, rest: 90, image: "barbellrow", exampleVideo: "https://www.youtube.com/watch?v=G8l_8chR5BE"),
            Exercise(order: 5, name: "Overhead Press",description: "Overhead Press Description", repeats: 5, sets: 5, rest: 90, image: "overheadpress", exampleVideo: "https://www.youtube.com/watch?v=zQ2JF3ROtNY"),
        ]
    }
}
