//
//  DayRowView.swift
//  Fitstrailer
//
//  Created by Furkan Kaynar on 17.12.23.
//

import SwiftUI

enum BodyParts {
    case chest
    case back
    case triceps
    case biceps
    case leg
    case shoulder
    
    func displayName() -> String {
        switch self {
        case .chest:
            return "Chest"
        case .back:
            return "Back"
        case .triceps:
            return "Triceps"
        case .biceps:
            return "Biceps"
        case .leg:
            return "Leg"
        case .shoulder:
            return "Shoulder"
        }
    }
}

struct DayRowView: View {
    @State var day: Day
    var selectedBodyPart: BodyParts?
    var body: some View {
        HStack {
            Text(day.name)
                .font(.headline)
            Spacer()
            if let selectedPart = selectedBodyPart {
                Text("\(selectedPart.displayName()) Exercises")
                    .font(.subheadline)
            } else {
                Text("There is no Exercise.")
                    .font(.subheadline)
            }
        }.padding()
    }
}

#Preview {
    DayRowView(day: Day(id: .init(), name: "Day 1", description: "Day 1 Description", excercises: Excercise.all()), selectedBodyPart: .chest)
}
