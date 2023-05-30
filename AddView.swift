import SwiftUI

struct AddView: View {
    
    @Binding var newLego: String
    
   @Binding var newAmount: Int?
    
    @Binding var All:[LegoAmount]

    var body: some View {
        
        HStack {
            
            TextField("Brick", text:$newLego)
                .border(Color.yellow, width: 3)  
                .background(.blue)
                .font(.system(size: 30))
                .frame(width: 175, height: 100)
            
        
            VStack {
                
                
                TextField(" # Only", value: $newAmount, format: .number)
                    .border(Color.yellow, width: 3)
                    .background(.blue)
                    .font(.system(size: 30))
                    .frame(width: 175, height: 100)
                
         
                
            }
            
            Button(action: {
                
                let newLegoAmount = LegoAmount(Lego: newLego, Amount: newAmount)
                
                All.append(newLegoAmount)
                
                
            }
                   , label: {
             
                
            })
            
            
            
            
            
            
            
            
            
        }
        
        
    }
    
}
