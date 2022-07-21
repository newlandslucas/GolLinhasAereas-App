//
//  ProfileView.swift
//  GolLinhasAereas
//
//  Created by Lucas Newlands on 21/07/22.
//

import SwiftUI

struct ProfileView: View {
    @State var isActive: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack(alignment: .leading) {
                    
                    HStack(spacing: 2) {
                        Text("Lucas Silveira Newlands Machado")
                            .font(.system(size: 18, weight: .bold, design: .default))
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        Button(action: {
                            isActive = true
                            if isActive {
                                NavigationLink(
                                    destination: HomeView(),
                                    label: {
                                        Text("Navega")
                                    })
                            }
                        }, label: {
                            Text("Foda se")
                        })
                        
//                        Button {
//                            NavigationLink(destination: HomeView(),
//                                           isActive: $isActive)
//                        }, label: {
//                            Image(systemName: "house.fill")
//                                .foregroundColor(.white)
//                                .background(Color("OrangeColor"))
//                                .font(.system(size: 30))
//                                .frame(width: 45, height: 45, alignment: .center)
//                                .cornerRadius(25)
//                        }
                    }
                    .frame(width: .infinity, height: 85)
                   
                    
                    Spacer()
                    
                    
                    VStack(alignment: .leading, spacing: 15) {
                        Button {
                            print("")
                        } label: {
                            Text("Perfil")
                                .font(.system(size: 22, weight: .semibold, design: .default))
                                .foregroundColor(.white)
                        }
                        
                        Button {
                            print("")
                        } label: {
                            Text("Preferências")
                                .font(.system(size: 22, weight: .semibold, design: .default))
                                .foregroundColor(.white)
                        }
                        
                        Button {
                            print("")
                        } label: {
                            Text("Pagamento")
                                .font(.system(size: 22, weight: .semibold, design: .default))
                                .foregroundColor(.white)
                        }
                        
                        Button {
                            print("")
                        } label: {
                            Text("Passageiros")
                                .font(.system(size: 22, weight: .bold, design: .default))
                                .foregroundColor(.white)
                        }
                        
                        Button {
                            print("")
                        } label: {
                            Text("Sair da conta")
                                .font(.system(size: 22, weight: .semibold, design: .default))
                                .foregroundColor(.white)
                        }
                        

                    }
                    .frame(width: 150)
                    
                    
                }
                .frame(width: .infinity)
                .padding()
                
         
        }
            .background(Color("OrangeColor"))
            .navigationBarTitle("")
            .navigationBarHidden(true)
            
          
         
            
        }
        .navigationBarBackButtonHidden(false)

    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
