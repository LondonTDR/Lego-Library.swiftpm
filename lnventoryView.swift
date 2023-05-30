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
        
        let arrayTest=[LegoAmount(Lego: "brick 2x4", Amount: "2"), LegoAmount(Lego: "brick 2x2", Amount: "1")]
        
        let AllSet=Set(All)
        
        let arrayTestSet=Set(arrayTest)
        
        let allElemsContained=arrayTestSet.isSubset(of: AllSet)
        
        VStack {
            HStack {
                Text("Inventory")
                    .foregroundColor(.red)
                    .font(.system(size: 30))
                    .frame(width: 600, height: 100)
                
                Spacer()
                
                NavigationLink("+")  {
                    AddView(newLego: $newLego, newAmount: $newAmount, All: $All)
                    
                    
                }
                .frame(width: 600, height: 100)
                
                
                
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
            Button("Check"){
                if allElemsContained==true{
                    print("IT WORKS")
                }
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














