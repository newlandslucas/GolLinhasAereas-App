//
//  Card.swift
//  GolLinhasAereas
//
//  Created by Lucas Newlands on 20/07/22.
//

import SwiftUI

struct Card: View {
    @State var image: String = "airplane"
    @State var text1: String = "Minhas "
    @State var text2: String = "viagens"
    
    var body: some View {
        Button {
            print("Clicou!")
        } label: {
            VStack(alignment: .leading, spacing: 5) {
                Image(systemName: image)
                    .foregroundColor(.orange)
                    .font(.system(size: 20))
                
                VStack {
                    Text(text1)
                        .foregroundColor(.black)
                        .font(.system(size: 15, weight: .medium, design: .serif))
                    
                    Text(text2)
                        .foregroundColor(.black)
                        .font(.system(size: 15, weight: .medium, design: .serif))
                }
                
            }
        }
        .cornerRadius(10)
        .background(.white)
        .padding()
        .frame(width: 125, height: 85, alignment: .leading)

    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
    }
}
