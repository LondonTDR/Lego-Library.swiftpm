import SwiftUI

struct AddView: View {
    
    @Binding var newLego:String
    
   @Binding var newAmount:String
    
    @Binding var All:[LegoAmount]

    
    
    
    
    var body: some View {
        
        HStack {
            
            TextField("        Lego ", text: $newLego)
                .border(Color.yellow, width: 3)  
                .background(.blue)
                .font(.system(size: 30))
                .frame(width: 175, height: 100)
            
            TextField("     Amount ", text: $newAmount)
                .border(Color.yellow, width: 3)  
                .background(.blue)
                .font(.system(size: 30))
                .frame(width: 175, height: 100)
            
            Button(action: {
                
                let newLegoAmount = LegoAmount(Lego: newLego, Amount: newAmount)
                
                All.append(newLegoAmount)
                
                
            }
                   , label: {
                Circle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.red)
                
            })     
            
            
            
            
            
            
            
            
            
        }
        
        
    }
    
}
