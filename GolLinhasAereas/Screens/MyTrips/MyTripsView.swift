//
//  MyTripsView.swift
//  GolLinhasAereas
//
//  Created by Lucas Newlands on 01/08/22.
//

import SwiftUI

struct MyTripsView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var current = "PRÓXIMAS"
    @Namespace var animation
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack {
                    Text("Minhas viagens")
                        .font(.system(size: 16, weight: .semibold, design: .rounded))
                    
                    Spacer()
                    
                    Button {
                        self.presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "arrow.backward.circle")
                            .foregroundColor(.black)
                            .font(.system(size: 50))
                    }
                }
            } // Header
            
            .frame(width: .infinity, height: 100)
            .padding()
            
            HStack(spacing: 0) {
                TabBar(current: $current, TextTitle: "PRÓXIMAS", animation: animation)
                TabBar(current: $current, TextTitle: "HISTÓRICO", animation: animation)
            }
            .padding()
            Spacer()
            
            if current == "PRÓXIMAS" {
                nextScreen()
            } else {
                historicScreen()
            }
            
            Spacer()
        }
        .frame(height: .infinity)
        .navigationBarBackButtonHidden(true)
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct nextScreen: View {
    var body: some View{
        
        VStack() {
            Text("Lucas, você não tem\nnenhuma viagem\npróxima cadastrada.")
                .font(.system(size: 24, weight: .bold, design: .rounded))
        }
        .frame(width: .infinity, height: .infinity, alignment: .leading)
        
        Spacer()
    }
}

struct historicScreen: View {
    var body: some View {
        Text("Lucas, você não tem\nnenhuma viagem\nneste aplicativo.")
            .font(.system(size: 24, weight: .bold, design: .rounded))
        
        Spacer()
    }
}

struct MyTripsView_Previews: PreviewProvider {
    static var previews: some View {
        MyTripsView()
    }
}
