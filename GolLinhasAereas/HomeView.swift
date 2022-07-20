//
//  HomeView.swift
//  GolLinhasAereas
//
//  Created by Lucas Newlands on 20/07/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack(alignment: .leading) {
            
            ScrollView(.vertical, showsIndicators: false) {
                HStack() {
                    Image("LogoTexto.png")
                        .resizable()
                    .frame(width: 75, height: 50)
                    
                
                    Spacer()
                    
                    HStack(spacing: 20) {
                        Button {
                            print("Clicou!")
                        } label: {
                            Text("Minha conta")
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .semibold, design: .rounded))
                        }
                        
                        Button {
                            print("Clicou!")
                        } label: {
                            Text("Ajuda")
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .semibold, design: .rounded))
                        }
                    }
                   
                } // Header
                VStack {
                    Image("Imagem1.png")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
                .frame(width: 250, height: 200, alignment: .center)
                Spacer()
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Olá")
                        .font(.system(size: 20, weight: .thin, design: .serif))
                    
                    Text("No nosso site você encontra todas\ninformações para a sua viagem!")
                        .font(.system(size: 20, weight: .thin, design: .serif))
                }
                .frame(width: 360, height: 150, alignment: .leading)
                
                
                Button {
                    print("clicou!")
                } label: {
                    Text("Fique por dentro")
                        .frame(width: 275, height: 50, alignment: .center)
                        .foregroundColor(.black)
                        .font(.system(size: 18, weight: .bold, design: .default))
                        .background(.orange)
                        .cornerRadius(10)
                    
                }
                
            } // ScrollView
       
            .padding()
            
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
