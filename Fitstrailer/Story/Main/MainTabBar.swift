//
//  MainTabBar.swift
//  Fitstrailer
//
//  Created by Furkan Kaynar on 17.12.23.
//

import SwiftUI

struct MainTabBar: View {
    var body: some View {
        TabView {
            Text("Coming Soon")
                .tabItem {
                    Image(systemName: "play.rectangle.fill")
                    Text("Coming Soon")
                }
            Text("Coming Soon")
                .tabItem {
                    Image(systemName: "arrow.down.to.line.alt")
                    Text("Coming Soon")
                }
            ProgramView(program: .all().first!)
                .tabItem {
                    Image(systemName: "list.bullet.rectangle")
                    Text("Programs")
                }
        }
    }
}

#Preview {
    MainTabBar()
}
