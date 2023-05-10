//
//  SearchView.swift
//  Lego_Library
//
//  Created by London Smith on 4/26/23.
//

import SwiftUI

struct Bookmark: Identifiable {
    let id = UUID()
    let name: String
    var items: [Bookmark]?
    
    static let brick_2x4=Bookmark(name: "brick 2x4")
    static let brick_2x3=Bookmark(name: "brick 2x3")
    static let brick_2x2=Bookmark(name: "brick 2x4")
    
    static let basic=Bookmark(name: "Basic", items: [Bookmark.brick_2x4, Bookmark.brick_2x3, Bookmark.brick_2x2])
    static let architectural=Bookmark(name: "Architectural", items: [Bookmark.brick_2x4, Bookmark.brick_2x3, Bookmark.brick_2x2])
    static let transportation=Bookmark(name: "Transportation", items: [Bookmark.brick_2x4, Bookmark.brick_2x3, Bookmark.brick_2x2])
    static let space=Bookmark(name: "Space", items: [Bookmark.brick_2x4, Bookmark.brick_2x3, Bookmark.brick_2x2])
    static let brick=Bookmark(name: "Brick", items: [Bookmark.brick_2x4, Bookmark.brick_2x3, Bookmark.brick_2x2])
    static let solid_Studs=Bookmark(name: "Solid Studs", items: [Bookmark.brick_2x4, Bookmark.brick_2x3, Bookmark.brick_2x2])
}

struct SearchView: View {
    // https://legouniverse.fandom.com/wiki/List_of_Bricks
    let bricks=["Brick 2x4","Brick 2x3","Brick 2x2"]
    let items: [Bookmark]=[.basic, .architectural, .transportation, .space, .brick, .solid_Studs]
    var body: some View {
        VStack{
            List(items, children: \.items) { row in
                Text(row.name)
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
