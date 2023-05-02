//
//  LegoTypeViewer.swift
//  Lego_Library
//
//  Created by Lincoln Drake on 4/26/23.
//

import SwiftUI

struct ListView: View {
    
    let currentAssignment: LegoBlock
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text(currentAssignment.LegoType).font(.system(size: 25))
                     
            Text("\(currentAssignment.description)").font(.system(size: 15))
                      
        }
        
    }
}


