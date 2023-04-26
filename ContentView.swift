import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink("Start"){
                InventoryView()
            }
            .navigationTitle("Lego Library")
            .font(.largeTitle)
            .foregroundColor(.red)
            .padding()
            Text("Start")
                .foregroundColor(.blue)
                .padding()
        }
    }
}
