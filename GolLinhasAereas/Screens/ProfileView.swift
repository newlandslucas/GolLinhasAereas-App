//
//  ProfileView.swift
//  GolLinhasAereas
//
//  Created by Lucas Newlands on 21/07/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                
                HStack(spacing: 2) {
                    Text("Lucas Silveira Newlands Machado")
                        .font(.system(size: 18, weight: .bold, design: .default))
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Button {
                        print("Clicou voltar para a Home!")
                    } label: {
                        Image(systemName: "house.fill")
                            .foregroundColor(.white)
                            .background(Color("OrangeColor"))
                            .font(.system(size: 30))
                            .frame(width: 50, height: 50, alignment: .center)
                            .cornerRadius(25)
                    }

                }
                .frame(width: .infinity, height: 85)
               
                
                Spacer()
                
                
                VStack(alignment: .leading, spacing: 15) {
                    Button {
                        print("")
                    } label: {
                        Text("Perfil")
                            .font(.system(size: 20, weight: .semibold, design: .default))
                            .foregroundColor(.white)
                    }
                    
                    Button {
                        print("")
                    } label: {
                        Text("Preferências")
                            .font(.system(size: 20, weight: .semibold, design: .default))
                            .foregroundColor(.white)
                    }
                    
                    Button {
                        print("")
                    } label: {
                        Text("Pagamento")
                            .font(.system(size: 20, weight: .semibold, design: .default))
                            .foregroundColor(.white)
                    }
                    
                    Button {
                        print("")
                    } label: {
                        Text("Passageiros")
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(.white)
                    }
                    
                    Button {
                        print("")
                    } label: {
                        Text("Sair da conta")
                            .font(.system(size: 20, weight: .semibold, design: .default))
                            .foregroundColor(.white)
                    }

                }
                .frame(width: 150)
                
            }
            .frame(width: .infinity)
            .padding()
     
        }
        .background(Color("OrangeColor"))
       
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
