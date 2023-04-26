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
            .frame(width: .infinity, height: .infinity)
            .foregroundColor(.red)
            Text("Start")
                .foregroundColor(.blue)
                .padding()
        }
    }
}
