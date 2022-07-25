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
        
        ScrollView(.vertical, showsIndicators: false) {
            
            Spacer()
            VStack {
                
                HStack() {
                    Text("Ajuda")
                        .font(.system(size: 16, weight: .semibold, design: .rounded))
                    
                    Spacer()
                    
                    Button {
                        self.presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "arrowtriangle.left.circle")
                            .foregroundColor(.black)
                            .font(.system(size: 45))
                        
                    }

                }
                
                VStack {
                    Text("Fale conosco em qualquer\num dos meios abaixo")
                        .font(.title)
                    .fontWeight(.semibold)
                }
                .padding(.vertical, 30)
                
                VStack(spacing: 0) {
                    ListContactsComponent(TextTitle: "Sac Gol - 24 horas (Gratuito", PhoneNumber: "0800 704 0465")
                    ListContactsComponent(TextTitle: "Sac Gol - 24 horas (Deficientes auditivos", PhoneNumber: "0800 709 0466")
                    ListContactsComponent(TextTitle: "Canal de vendas - 24 horas (Brasil", PhoneNumber: "0300 115 2121")
                    ListContactsComponent(TextTitle: "Canais de vendas - 24 horas (Exterior)", PhoneNumber: "+55 11 5504 4410")
                    ListContactsComponent(TextTitle: "Sac Voe Fácil (Seg - Sáb das 08h ás 20h)", PhoneNumber: "0300 789 7141")
                    ListContactsComponent(TextTitle: "Sac Smiles\nCategoriaSmiles e Prata(Das 06 ás 00h)", PhoneNumber: "0300 115 7001")
                    ListContactsComponent(TextTitle: "Sac Smiles\nCategorias Ouro e Diamante(Das 06 ás 00h)", PhoneNumber: "0800 704 0465")
                }
                
                Spacer()
            }
            .padding()
            .frame(width: .infinity, height: .infinity)
            
            
        }
        .background(Color("ColorBackground"))
        .ignoresSafeArea(.all)
        .navigationBarBackButtonHidden(true)
        .navigationTitle("")
        .navigationBarHidden(true)

    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
