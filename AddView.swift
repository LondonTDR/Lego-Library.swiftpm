//
//  AddView.swift
//  Lego_Library
//
//  Created by Lincoln Drake on 4/26/23.
//

import SwiftUI

struct AddView: View {
    var body: some View {
  
        HStack {
                        
                        TextField(" LegoType ", text: $newLegoType)
                            .border(Color.gray, width: 3)
                            .background(.orange)
                            .font(.system(size: 30))
                            .bold()
                            .frame(width: 175, height: 100)
                        
                        TextField("#", text: $newAmount)
                            .border(Color.gray, width: 3)
                            .background(.orange)
                            .font(.system(size: 30))
                            .bold()
                            .frame(width: 175, height: 100)
                      
                        Button(action: {
                            
                            let newLegoBlock = legoType(LegoType: newLegoType, amount: newAmount)
                            
                            All.append(newBlockAmount)
                            
                        }
                                                , label: {
                                             Circle()
                                                 .frame(width: 50, height: 50)
                                                 .foregroundColor(.red)
                                             
                                         })
                                         
                                         
                                         
                                         
                                         
                                     }
                                 }
                             
                                 .background(.yellow)
                             }
                         }


    }
}

