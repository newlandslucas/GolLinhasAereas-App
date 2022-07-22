//
//  HelpView.swift
//  GolLinhasAereas
//
//  Created by Lucas Newlands on 22/07/22.
//

import SwiftUI

struct HelpView: View {
    @State var isActive: Bool = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    
    var body: some View {
        NavigationView {
         
            ZStack {
                VStack(alignment: .leading) {
                    
                    HStack() {
                        Text("Ajuda")
                        
                        Spacer()
                        
                        Button {
                            self.presentationMode.wrappedValue.dismiss()
                        } label: {
                            Text("Voltar")
                        }
                    }
                    .padding()
                    
                    Spacer()
                }
                Spacer()
                .frame(width: .infinity, height: 85)
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
