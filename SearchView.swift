//
//  SearchView.swift
//  Lego_Library
//
//  Created by London Smith on 4/26/23.
//

import SwiftUI

struct SearchView: View {
    // https://legouniverse.fandom.com/wiki/List_of_Bricks
    let bricks=["Brick 2x4","Brick 2x3","Brick 2x2"]
    var body: some View {
        VStack{
            List{
                ForEach(0..<bricks.count,id:\.self){index in
                    Text(bricks[index])
                }
            }
        }
        .toolbar {
            ToolbarItem(placement: ToolbarItemPlacement.bottomBar) {
                NavigationLink {
                    InventoryView()
                } label: {
                    Image(systemName: "bag")
                }
                
            }
            ToolbarItem(placement: ToolbarItemPlacement.bottomBar){
                Button {
                    
                } label: {
                    Image(systemName: "magnifyingglass.circle.fill")
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
