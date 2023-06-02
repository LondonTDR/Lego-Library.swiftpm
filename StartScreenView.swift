import SwiftUI

struct StartScreenView: View {
    var body: some View {
        NavigationView {
            
            Image("appIcon")
            
            NavigationLink("Start"){
                InventoryView()
            }
            .foregroundColor(.white)
            .background(Color.blue)
            
        }
        
        .navigationViewStyle(.stack)
    }
}
