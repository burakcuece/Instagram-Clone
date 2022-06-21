//
//  ContentView.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 12.06.22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var authentication = Authentication()
    
    var body: some View {
//        LoginView()
        HomeScreenView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
