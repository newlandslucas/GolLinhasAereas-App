//
//  FindTrip.swift
//  GolLinhasAereas
//
//  Created by Lucas Newlands on 22/07/22.
//

import SwiftUI

struct FindTripView: View {
    @State var reservationCode: String = ""
    @State var titleTextField: String = ""
    @State var codeTextField: String = ""
    @State var originTextField: String = ""
    @State var nicknameTextField: String = ""
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    
    var body: some View {
        VStack(spacing: 18) {
            VStack(alignment: .leading,spacing: 5) {
                HStack {
                    Text("Encontrar viagem")
                        .font(.system(size: 16, weight: .semibold, design: .rounded))
                    
                    Spacer()
                    
                    Button {
                        self.presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark.circle")
                            .foregroundColor(.black)
                            .font(.system(size: 50))
                    }

                } // Header
                .padding()
                
                VStack(spacing: 15) {
                    TextField("Código da reserva", text: $reservationCode)
                        .foregroundColor(.black)
                        .font(.system(size: 24))
                        
                    Divider()
                    
                    TextField("Código", text: $codeTextField)
                        .foregroundColor(.black)
                        .font(.system(size: 24))
                        
                    Divider()
                    
                    TextField("Origem", text: $originTextField)
                        .foregroundColor(.black)
                        .font(.system(size: 24))
                        
                    Divider()
                    TextField("Sobrenome", text: $nicknameTextField)
                        .foregroundColor(.black)
                        .font(.system(size: 24))
                        
                    Divider()
                    
                }
                Spacer()
            }
            .frame(width: .infinity, height: 350)
            Spacer()
        }
        .frame(height: .infinity)
        .navigationBarBackButtonHidden(true)
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct FindTripView_Previews: PreviewProvider {
    static var previews: some View {
        FindTripView()
    }
}
