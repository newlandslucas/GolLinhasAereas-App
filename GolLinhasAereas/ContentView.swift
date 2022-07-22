//
//  ContentView.swift
//  GolLinhasAereas
//
//  Created by Lucas Newlands on 20/07/22.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("HomeView") var isOnboradingViewActive: String = "HomeView"
    
    var body: some View {
        
        HomeView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
