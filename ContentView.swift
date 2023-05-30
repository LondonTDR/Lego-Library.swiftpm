import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            NavigationLink("Start"){
                InventoryView()
            }
                        
            Text("Start")
                .foregroundColor(.red)
                .padding()
            
                .navigationTitle("Lego Library")
                .font(.largeTitle)
                .foregroundColor(.red)
                .padding()

        }
        
        .navigationViewStyle(.stack)
    }
}
