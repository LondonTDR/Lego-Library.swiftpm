//
//  LibraryView.swift
//  Lego_Library
//
//  Created by London Smith on 4/26/23.
//

import SwiftUI

struct LibraryView: View {
    let sets=["Double-Decker Couch", "Batman and Super Angry Kitty Attack", "Bad Cop Car Chase"]
    var body: some View {
        VStack{
            NavigationLink("Double-Decker Couch"){
                DoubleDeckerCouchView()
            }
            NavigationLink("Batman and Super Angry Kitty Attack"){
                BatmanAndSuperAngryKittyAttackView()
            }
            NavigationLink("Bad Cop Car Chase"){
                BadCopCarChaseView()
            }
        }
        .toolbar {
            ToolbarItem(placement: ToolbarItemPlacement.bottomBar){
                NavigationLink {
                    InventoryView()
                } label: {
                    Image(systemName: "bag")
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
                    Image(systemName: "books.vertical.fill")
                }
                
            }
        }
    }
}
