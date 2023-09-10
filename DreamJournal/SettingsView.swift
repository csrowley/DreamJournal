//
//  SettingsView.swift
//  DreamJournal
//
//  Created by Chris Rowley on 8/4/23.
//

import SwiftUI

struct SettingsView: View {
    
    init(){
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    var body: some View {
        NavigationView {
            Color(red: 0.13, green: 0.13, blue: 0.15)
                .ignoresSafeArea()
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.inline)
            
        }
    }
            
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
