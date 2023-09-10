import SwiftUI

struct ContentView: View {
    let weekdays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    @State private var showSheet = false
    init() {
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0.13, green: 0.13, blue: 0.15)
                    .ignoresSafeArea()
                    .navigationTitle("Dream Journal")
                    .navigationBarTitleDisplayMode(.inline)
                
                List(weekdays, id: \.self) { weekday in
                    NavigationLink(destination: DreamView()){ 
                        Text(weekday)
                            .foregroundColor(.white)
                            .listRowBackground(Color(red: 0.13, green: 0.13, blue: 0.15))
                            .listRowSeparatorTint(.white)
                            .padding(EdgeInsets(top: 15, leading: -5, bottom: 15, trailing: 20))
                    }
                    .listRowBackground(Color(red: 0.13, green: 0.13, blue: 0.15))

                }
                .listStyle(PlainListStyle())
                .scrollContentBackground(.hidden)
                
                VStack {
                    Spacer()
                    HStack {
                        Button("New Dream"){
                            showSheet.toggle()
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(.green)
                        .cornerRadius(20)
                        .sheet(isPresented: $showSheet){
                            AddSheetView()
                        }
                    }
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
