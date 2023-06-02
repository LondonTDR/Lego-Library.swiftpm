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
    
    static let brick_2x2=Bookmark(name: "brick 2x4", lid: "3003", userImage: "M3003")
    static let brick_2x3=Bookmark(name: "brick 2x3", lid: "3002", userImage: "M3002")
    static let brick_2x4=Bookmark(name: "brick 2x4", lid: "3001", userImage: "M3001")
    static let B=Bookmark(name: "Bar 1L with Clip Mechanical Claw", lid: "4289538", userImage: "M4289538")
    static let H=Bookmark(name: "Hips and Dark Blue Legs with Silver Belt Buckle, Pull Tab and Knee Pads Pattern", lid: "6058067", userImage: "M6058067")
    static let Plate_2=Bookmark(name: "Plate 2 x 4", lid: "4211395", userImage: "M4211395")
    static let Plate_4=Bookmark(name: "Plate 4 x 4", lid: "4243831", userImage: "M4243831")
    static let Plate_6=Bookmark(name: "Plate 6 x 8", lid: "4210794", userImage: "M4210794")
    static let S=Bookmark(name: "Slope 30 1 x 1 x 2/3", lid: "4244363", userImage: "M4244363")
    static let Te=Bookmark(name: "Technic, Axle and Pin Connector Perpendicular", lid: "4173668", userImage: "M4173668")
    static let Tile_M=Bookmark(name: "Tile, Modified 1 x 2 Grille with Bottom Groove / Lip", lid: "4211350", userImage: "M4211350")
    static let Tile_R=Bookmark(name: "Tile, Round 1 x 1", lid: "4646864", userImage: "M4646864")

    static let bar=Bookmark(name: "Bar", lid: ".", userImage: "white", items: [Bookmark.B])
    static let brick=Bookmark(name: "Brick", lid: ".", userImage: "white", items: [Bookmark.brick_2x4, Bookmark.brick_2x3, Bookmark.brick_2x2])
    static let minifigure=Bookmark(name: "Minifigure", lid: ".", userImage: "white", items: [Bookmark.H])
    static let plate=Bookmark(name: "Plate", lid: ".", userImage: "white", items: [Bookmark.Plate_2, Bookmark.Plate_4, Bookmark.Plate_6])
    static let slope=Bookmark(name: "Slope", lid: ".", userImage: "white", items: [Bookmark.S])
    static let technic=Bookmark(name: "Technic", lid: ".", userImage: "white", items: [Bookmark.Te])
    static let tile=Bookmark(name: "Tile", lid: ".", userImage: "white", items: [Bookmark.Tile_M, Bookmark.Tile_R])
}

struct SearchView: View {
    // https://legouniverse.fandom.com/wiki/List_of_Bricks
    // https://brickset.com/parts/category-Animals-And-Creatures
    //https://www.bricklink.com/catalogTree.asp?itemType=P
    let items: [Bookmark]=[.bar, .brick, .minifigure, .plate, .slope, .technic, .tile]
    var body: some View {
        VStack{
            List(items, children: \.items) { row in
                Image(row.userImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
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
