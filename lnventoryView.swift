//
//  lnventoryView.swift
//  Lego_Library
//
//  Created by London Smith on 4/24/23.
//

import SwiftUI

struct InventoryView: View {
    
    
    @State var All:[LegoAmount] = []
    
    @State var newLego: String = ""
    
    @State var newAmount: Int?
    
    
    
    var body: some View {
        
        
        VStack {
            HStack {
                Text("Inventory")
                    .foregroundColor(.red)
                    .font(.system(size: 30))
                    .frame(width: 200, height: 100)
                
                Spacer()
                
                NavigationLink("+")  {
                    AddView(newLego: $newLego, newAmount: $newAmount, All: $All)
                    
                    
                }
                
                
                
            }
            .frame(alignment: .topLeading)
            .foregroundColor(.red)
            .font(.system(size: 30))
            .frame(width: 250, height: 100, alignment: .center)
            
            List(All, id: \.self) { currentLegoAmount in
                
                ListView(currentLegoAmount: currentLegoAmount)
                    .font(.system(size: 30))
                    .background(.gray)
                
                
                
            }
            
        }
        .toolbar {
            ToolbarItem(placement: ToolbarItemPlacement.bottomBar){
                Button {
                    
                } label: {
                    Image(systemName: "bag.fill")
                }
                Spacer()
            }
            ToolbarItem(placement: ToolbarItemPlacement.bottomBar) {
                NavigationLink {
                    SearchView()
                } label: {
                    Image(systemName: "magnifyingglass")
                }
                Spacer()
            }
            ToolbarItem(placement: ToolbarItemPlacement.bottomBar) {
                NavigationLink {
                    LibraryView()
                } label: {
                    Image(systemName: "books.vertical")
                }
                
            }
        }
    }
    
}














