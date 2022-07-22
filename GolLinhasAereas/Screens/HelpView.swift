//
//  HelpView.swift
//  GolLinhasAereas
//
//  Created by Lucas Newlands on 22/07/22.
//

import SwiftUI

struct HelpView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    
    var body: some View {
        
        VStack {
            
            HStack {
                Text("Ajuda")
                
                Spacer()
                
                Text("Botão voltar")
            }
            
            Spacer()
            
            Text("Fale conosco em qualquer\num dos meios abaixo")
                .font(.title)
                .fontWeight(.semibold)
            
            VStack {
                
            }
            
            Spacer()
        }
        .padding()
        .frame(width: .infinity, height: .infinity)
        .background(Color("ColorBackground"))
    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
