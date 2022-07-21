//
//  ProfileView1.swift
//  GolLinhasAereas
//
//  Created by Lucas Newlands on 21/07/22.
//

import SwiftUI

struct ProfileView1: View {
    var body: some View {
        NavigationView {
            
            VStack(alignment: .leading) {
                HStack {
                    Text("Lucas Silveira Newlands Machado")
                    
                    Spacer()
                }
                
                Spacer()
            }
            
            .padding()
           
            
           
        }
    }
}

struct ProfileView1_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView1()
    }
}
