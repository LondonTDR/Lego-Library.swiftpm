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
    let lid: String
    let userImage: String
    var items: [Bookmark]?
    
    static let brick_2x4=Bookmark(name: "brick 2x4", lid: "3001", userImage: "M3001")
    static let brick_2x3=Bookmark(name: "brick 2x3", lid: "3002", userImage: "M3002")
    static let brick_2x2=Bookmark(name: "brick 2x4", lid: "3003", userImage: "M3003")
    static let B=Bookmark(name: "Bar 1L with Clip Mechanical Claw", lid: "4289538", userImage: "M4289538")
    static let S=Bookmark(name: "Slope 30 1 x 1 x 2/3", lid: "4244363", userImage: "M4244363")

    static let basic=Bookmark(name: "Bar", lid: ".", userImage: "white", items: [Bookmark.B])
    static let architectural=Bookmark(name: "Slope", lid: ".", userImage: "white", items: [Bookmark.S])
    static let transportation=Bookmark(name: "Transportation", lid: ".", userImage: "white", items: [Bookmark.brick_2x4, Bookmark.brick_2x3, Bookmark.brick_2x2])
    static let space=Bookmark(name: "Space", lid: ".", userImage: "white", items: [Bookmark.brick_2x4, Bookmark.brick_2x3, Bookmark.brick_2x2])
    static let brick=Bookmark(name: "Brick", lid: ".", userImage: "white", items: [Bookmark.brick_2x4, Bookmark.brick_2x3, Bookmark.brick_2x2])
    static let solid_Studs=Bookmark(name: "Solid Studs", lid: ".", userImage: "white", items: [Bookmark.brick_2x4, Bookmark.brick_2x3, Bookmark.brick_2x2])
}

struct SearchView: View {
    // https://legouniverse.fandom.com/wiki/List_of_Bricks
    // https://brickset.com/parts/category-Animals-And-Creatures
    //https://www.bricklink.com/catalogTree.asp?itemType=P
    let items: [Bookmark]=[.basic, .architectural, .transportation, .space, .brick, .solid_Studs]
    var body: some View {
        VStack{
            List(items, children: \.items) { row in
                Image(row.userImage)
                Text(row.lid)
                Text(row.name)
                }
            Link("If lego isn't on here click this", destination: URL(string: "https://www.bricklink.com/catalogTree.asp?itemType=P")!)
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
