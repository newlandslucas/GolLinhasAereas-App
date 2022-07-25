//
//  ListContactsComponent.swift
//  GolLinhasAereas
//
//  Created by Lucas Newlands on 22/07/22.
//

import SwiftUI

struct ListContactsComponent: View {
    @State var TextTitle: String = "Sac Gol - 24 horas (Gratuito)"
    @State var PhoneNumber: String = "0800 704 0465"
    var body: some View {
        
        
        
        VStack(spacing: 20) {
            Divider()
           
            
            HStack() {
                VStack(alignment: .leading, spacing: 5) {
                    Text(TextTitle)
                        .foregroundColor(.black)
                        
                        .font(.system(size: 12, weight: .regular, design: .rounded))
                    
                    Text(PhoneNumber)
                        .foregroundColor(.black)
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                }
                .frame(width: 280, height: 50, alignment: .leading)
                
                Spacer()
                
                
                VStack {
                    Image(systemName: "phone")
                        .font(.system(size: 25))
                }
            }
            
            Divider()
            
           
        }
        .frame(width: 350, height: 90)
    }
}

struct ListContactsComponent_Previews: PreviewProvider {
    static var previews: some View {
        ListContactsComponent()
    }
}
