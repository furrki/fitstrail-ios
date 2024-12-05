//
//  DailyProgramView.swift
//  Fitstrailer
//
//  Created by Can on 21.12.2023.
//

import SwiftUI

struct DailyProgramView: View {
        
    let exercises = Exercise.all().sorted { $0.order < $1.order }

        var body: some View {
            List(exercises) { exercise in
                VStack(alignment: .leading) {
                    HStack {
                        Text(exercise.name)
                            .font(.headline)
                        Spacer()
                        Button(action: {
                            if let url = URL(string: exercise.exampleVideo) {
                                                        UIApplication.shared.open(url)
                                                    }
                        }) {
                            Image(systemName: "play.circle")
                                .font(Font.system(size:25))
                        }
                    }
                    Text("Repeats: \(exercise.repeats), Sets: \(exercise.sets)")
                        .font(.subheadline)
                    
                }
            }
        }
    }

#Preview {
    DailyProgramView()
}
