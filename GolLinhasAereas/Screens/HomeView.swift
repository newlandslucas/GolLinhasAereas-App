//
//  HomeView.swift
//  GolLinhasAereas
//
//  Created by Lucas Newlands on 20/07/22.
//

import SwiftUI

struct HomeView: View {
    
    var link: String = "https://www.voegol.com.br"
    @State var isActive: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                
                ScrollView(.vertical, showsIndicators: false) {
                    HStack(spacing: 25) {
                        Image("LogoTexto.png")
                            .resizable()
                        .frame(width: 65, height: 40)
                        
                    
                        Spacer()
                        
                        HStack(spacing: 20) {
                            
                            NavigationLink(destination: ProfileView(), isActive: $isActive) {
                                Button {
                                    isActive = true
                                } label: {
                                    Text("Minha conta")
                                        .foregroundColor(.black)
                                        .font(.system(size: 15, weight: .semibold, design: .rounded))
                                }

                            }.isDetailLink(false)
                            
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
                    
                    Link(destination: URL(string: link)!) {
                        Text("Fique por dentro")
                            .frame(width: 275, height: 50, alignment: .center)
                            .foregroundColor(.black)
                            .font(.system(size: 18, weight: .bold, design: .default))
                            .background(Color("OrangeColor"))
                            .cornerRadius(10)
                    }
                    Spacer()
                } // ScrollView
                
                
                VStack(alignment: .center) {
                    HStack(spacing: 10) {
                        Card(image: "magnifyingglass", text1: "Encontrar", text2: "viagem")
                        Card(image: "airplane.departure", text1: "Fazer", text2: "check-in")
                        Card(image: "ticket.fill", text1: "Comprar", text2: "viagem")
                    }
                    
                    HStack {
                        Card(image: "airplane", text1: "Encontrar", text2: "viagem")
                        Card(image: "clock.fill", text1: "Status de", text2: "voo")
                        Card(image: "figure.walk", text1: "Voe Junto", text2: "")
                    }
                }
                
            }
            .padding()
            .background(Color("ColorBackground"))
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
        
       
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
