//
//  purchaseTripView.swift
//  GolLinhasAereas
//
//  Created by Lucas Newlands on 25/07/22.
//

import SwiftUI

struct purchaseTripView: View {
    
    @State private var selectedTab: Int = 0
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var current = "IDA E VOLTA"
    @Namespace var animation
    
    var tabs = ["IDA E VOLTA", "UM TRECHO", "VÁRIOS TRECHOS"]
    
    var body: some View {
        
        VStack {
            VStack(spacing: 25) {
                VStack(alignment: .leading,spacing: 25) {
                    HStack {
                        Text("Comprar viagem")
                            .font(.system(size: 16, weight: .semibold, design: .rounded))
                    
                        Spacer()
                        
                        Button {
                            self.presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "arrow.left.circle")
                                .foregroundColor(.black)
                                .font(.system(size: 50))
                        }
                        .padding()
                    }
                    
                    HStack(spacing: 0) {
                        TabBarButton(current: $current, TextTitle: "IDA E VOLTA", animation: animation)
                        TabBarButton(current: $current, TextTitle: "UM TRECHO", animation: animation)
                        TabBarButton(current: $current, TextTitle: "VÁRIOS TRECHOS", animation: animation)
                    }
                    .padding(.horizontal)
                        
                }
                .padding()
                .frame(width: .infinity, height: 175)
                
                
                if current == "IDA E VOLTA" {
                    goingView()
                } else if current == "UM TRECHO" {
                    stretchView()
                } else if current == "VÁRIOS TRECHOS" {
                    otherView()
                }
                
            } // Header
    
        }
        .frame(height: .infinity)
        .navigationBarBackButtonHidden(true)
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}




struct goingView: View {
    @State var destineCode: String = ""
    @State var titleTextField: String = ""
    @State var dateTextField: String = ""
    @State var originTextField: String = ""
    
    var body: some View {
        
        
        VStack(alignment: .leading) {
            Text("Cliente")
                .foregroundColor(.gray)
                .font(.system(size: 14))
                .padding()
            
            VStack(spacing: 15) {
                TextField("1 Adulto", text: $titleTextField)
                    .foregroundColor(.black)
                    .font(.system(size: 24))
                Divider()
                TextField("Origem", text: $originTextField)
                    .foregroundColor(.black)
                    .font(.system(size: 24))
                Divider()
                TextField("Destino", text: $destineCode)
                    .foregroundColor(.black)
                    .font(.system(size: 24))
                    
                Divider()
                
                TextField("Datas", text: $dateTextField)
                    .foregroundColor(.black)
                    .font(.system(size: 24))
                    
                Divider()
                
                
                
                Spacer()

                
            }
            .padding()
        }
        Spacer()
          
    }
    
}

struct stretchView: View {
  
    @State var destineCode: String = ""
    @State var titleTextField: String = ""
    @State var dateTextField: String = ""
    @State var originTextField: String = ""
    
    var body: some View {
        
        
        VStack(alignment: .leading) {
            Text("Cliente")
                .foregroundColor(.gray)
                .font(.system(size: 14))
                .padding()
            
            VStack(spacing: 15) {
                TextField("1 Adulto", text: $titleTextField)
                    .foregroundColor(.black)
                    .font(.system(size: 24))
                Divider()
                TextField("Origem", text: $originTextField)
                    .foregroundColor(.black)
                    .font(.system(size: 24))
                Divider()
                TextField("Destino", text: $destineCode)
                    .foregroundColor(.black)
                    .font(.system(size: 24))
                    
                Divider()
                
                TextField("Datas", text: $dateTextField)
                    .foregroundColor(.black)
                    .font(.system(size: 24))
                    
                Divider()
                
                
                
                Spacer()

                
            }
            .padding()
        }
        Spacer()
          
    }
}

struct otherView: View {
  
    @State var destineCode: String = ""
    @State var titleTextField: String = ""
    @State var dateTextField: String = ""
    @State var originTextField: String = ""
    
    var body: some View {
        
        
        VStack(alignment: .leading) {
            Text("Cliente")
                .foregroundColor(.gray)
                .font(.system(size: 14))
                .padding()
            
            VStack(alignment: .leading, spacing: 15) {
                VStack() {
                    TextField("1 Adulto", text: $titleTextField)
                        .foregroundColor(.black)
                    .font(.system(size: 24))
                    Divider()

                }
               
                                
                Text("Trecho 1")
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .frame(height: 50)
               
                
                TextField("Origem", text: $originTextField)
                    .foregroundColor(.black)
                    .font(.system(size: 24))
                Divider()
                TextField("Destino", text: $destineCode)
                    .foregroundColor(.black)
                    .font(.system(size: 24))
                    
                Divider()
                
                TextField("Datas", text: $dateTextField)
                    .foregroundColor(.black)
                    .font(.system(size: 24))
                    
                Divider()

                
            }
            .padding()
        }
        Spacer()
          
    }
    
}

struct purchaseTripView_Previews: PreviewProvider {
    static var previews: some View {
        purchaseTripView()
    }
}
