//
//  lnventoryView.swift
//  Lego_Library
//
//  Created by London Smith on 4/24/23.
//

import SwiftUI

struct InventoryView: View {
    var body: some View {
            Text("Hello, World!")
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
