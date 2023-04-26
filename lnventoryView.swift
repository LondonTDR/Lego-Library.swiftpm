//
//  lnventoryView.swift
//  Lego_Library
//
//  Created by London Smith on 4/24/23.
//

import SwiftUI

struct InventoryView: View {
    var body: some View {
        
        @Binding
        
        HStack {
            Text("Inventory")
                .foregroundColor(.red)
                .font(.system(size: 30))
                .frame(width: 350, height: 100, alignment: .center)
            
            Button("+") {
            
                NavigationLink()  {
                    AddView()
                    
                    
                }
                
                
                
            }
        .foregroundColor(.red)
        .font(.system(size: 30))
        .frame(width: 250, height: 100, alignment: .center)
    
            
            List(All, id: \.self) { currentLegoBlock in
                
                ListView(currentLegoBlock: currentLegoBlock)
                    .font(.system(size: 30))
                    .bold()
                    .background(.gray)
                
                
                
                
            }
        }
        
    }
}
