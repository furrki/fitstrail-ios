//
//  DayRowView.swift
//  Fitstrailer
//
//  Created by Furkan Kaynar on 17.12.23.
//

import SwiftUI

struct DayRowView: View {
    @State var day: Day
    var exerciseCount: Int {
        return Exercise.all().count
    }
    var body: some View {
        HStack {
            Text(day.name)
                .font(.headline)
            Spacer()
            Text("Total Exercises: \(exerciseCount)")
                .font(.subheadline)
        }
        .padding()
    }
}


#Preview {
    DayRowView(day: Day(id: .init(), name: "Day 1", description: "Day 1 Description", exercises: Exercise.all()))
}
