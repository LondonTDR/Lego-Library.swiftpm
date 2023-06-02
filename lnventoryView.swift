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
        
        let arrayTest=[LegoAmount(Lego: "Bar 1L with Clip Mechanical Claw", Amount: 1), LegoAmount(Lego: "Slope 30 1 x 1 x 2/3", Amount: 4), LegoAmount(Lego: "Hips and Dark Blue Legs with Silver Belt Buckle, Pull Tab and Knee Pads Pattern", Amount: 2), LegoAmount(Lego: "Plate 2 x 4", Amount: 7), LegoAmount(Lego: "Tile, Modified 1 x 2 Grille with Bottom Groove / Lip", Amount: 1), LegoAmount(Lego: "Plate 4 x 4", Amount: 1), LegoAmount(Lego: "Plate 6 x 8", Amount: 1), LegoAmount(Lego: "Technic, Axle and Pin Connector Perpendicular", Amount: 4), LegoAmount(Lego: "Tile, Round 1 x 1", Amount: 1)]
        
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
                    print("You can make the test set")
                }else{
                  print("You can't")
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














