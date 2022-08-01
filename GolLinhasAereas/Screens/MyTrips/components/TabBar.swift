//
//  TabBar.swift
//  GolLinhasAereas
//
//  Created by Lucas Newlands on 01/08/22.
//

import SwiftUI

struct TabBar: View {
    @Binding var current: String
    var TextTitle: String
    var animation: Namespace.ID
    
    var body: some View {
            
        Button {
            withAnimation{
                current = TextTitle
            }
        } label: {
            VStack(spacing: 5) {
                
                Text(TextTitle)
                    .font(.system(size: 12))
                    .fontWeight(.semibold)
                    .foregroundColor(current == TextTitle ? Color("OrangeColor") : Color.black)
                    .frame(height: 35)
                
                ZStack {
                    Rectangle()
                        .fill(Color.clear)
                        .frame(height: 2)
                    
                    if current == TextTitle {
                        Rectangle()
                            .fill(Color("OrangeColor"))
                            .frame(height: 2)
                            .matchedGeometryEffect(id: "Tab", in: animation)
                    }
                    
                }
            }
        }


    }
}

