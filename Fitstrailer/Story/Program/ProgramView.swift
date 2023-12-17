//
//  ProgramView.swift
//  Fitstrailer
//
//  Created by Furkan Kaynar on 17.12.23.
//

import SwiftUI

struct ProgramView: View {
    @State var program: Program
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Text(program.name)
                        .font(.largeTitle)
                    Text(program.description)
                        .font(.subheadline)
                }
                .padding()
                List(program.days) { day in
                    NavigationLink(destination: DayRowView(day: day)) {
                        DayRowView(day: day)
                    }
                }
            }
        }
        .navigationTitle("Program")
        .onAppear {
            self.program = Program.all().first!
        }
    }
}

#Preview {
    ProgramView(program: Program.all().first!)
}
