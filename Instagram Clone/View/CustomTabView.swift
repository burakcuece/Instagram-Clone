//
//  CustomTabView.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 27.06.22.
//

import SwiftUI

struct CustomTabView: View {
    var body: some View {
        TabView {
            HomeScreenView()
                .tabItem {
                    Label("", systemImage: "house")
                        .foregroundColor(Color.black)
                }
            CustomGridView()
                .tabItem {
                    Label("", systemImage: "magnifyingglass")
                }
               
        }
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
