//
//  DayRowView.swift
//  Fitstrailer
//
//  Created by Furkan Kaynar on 17.12.23.
//

import SwiftUI

struct DayRowView: View {
    @State var day: Day
    
    var body: some View {
        HStack {
            Text(day.name)
                .font(.headline)
            Spacer()
            Text("\(day.excercises.count) Excercises")
                .font(.subheadline)
        }
    }
}

#Preview {
    DayRowView(day: Day(id: .init(), name: "Day 1", description: "Day 1 Description", excercises: Excercise.all()))
}
