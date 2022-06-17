//
//  Instagram_CloneApp.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 12.06.22.
//

import SwiftUI

@main
struct Instagram_CloneApp: App {

    @StateObject var authentication = Authentication()
    
    var body: some Scene {
        WindowGroup {
            if authentication.isValidated {
                HomeScreenView()
                    .environmentObject(authentication)
            } else {
                ContentView()
                    .environmentObject(authentication)
            }
        }
    }
}
