//
//  DreamJournalApp.swift
//  DreamJournal
//
//  Created by Chris Rowley on 8/4/23.
//

import SwiftUI

@main
struct DreamJournalApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                ContentView()
                    .tabItem{
                        Label("Dreams", systemImage: "book")
                    }
                SettingsView()
                    .tabItem{
                        Label("Settings", systemImage: "gear")
                    }
            }
        }
    }
}
