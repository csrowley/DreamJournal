//
//  AddSheetView.swift
//  DreamJournal
//
//  Created by Chris Rowley on 8/29/23.
//

import SwiftUI

struct AddSheetView: View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    @State private var dreamDetails = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $dreamDetails)
                    .foregroundColor(.white)
                    .foregroundStyle(.secondary)
                    .padding(.horizontal)
                    .scrollContentBackground(.hidden)
                    .background(
                        Color(red: 0.13, green: 0.13, blue: 0.15)
                            .ignoresSafeArea()
                    )
                
                Button("Submit") {
                    print("")
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.green)
                .cornerRadius(20)
            }
            .background(
                Color(red: 0.13, green: 0.13, blue: 0.15)
                    .ignoresSafeArea()
            )
            .navigationBarTitle("Your Dream 💤")
        }
    }
}


struct AddSheetView_Previews: PreviewProvider {
    static var previews: some View {
        AddSheetView()
    }
}
