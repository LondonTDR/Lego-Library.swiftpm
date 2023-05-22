import SwiftUI

struct ListView: View {
    
    let currentLegoAmount: LegoAmount
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text(currentLegoAmount.Lego).font(.system(size: 25))
            
            Text("\(currentLegoAmount.Amount!)").font(.system(size: 15))
            
            
            
            
        }
        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        
        
        
    }
    
    
    
}
