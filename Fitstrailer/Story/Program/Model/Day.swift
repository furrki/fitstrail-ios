//
//  Day.swift
//  Fitstrailer
//
//  Created by Furkan Kaynar on 17.12.23.
//

import Foundation

struct Day: Codable, Identifiable {
    var id: UUID = UUID()
    var name: String
    var description: String
    var exercises: [Exercise]
}
