import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Text("Lego Library")
                .font(.largeTitle)
                .foregroundColor(.red)
                .padding()
            NavigationLink("Start"){
                InventoryView()
            }
            Text("Start")
                .foregroundColor(.blue)
                .padding()
            Spacer()
        }
    }
}
