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
            ReelsView()
                .tabItem {
                    Label("", systemImage: "play.square")
                }
            ShoppingView()
                .tabItem {
                    Label("", systemImage: "bag")
                }
            ProfilView()
                .tabItem {
                    Label("", systemImage: "person.crop.circle")
                }
            
        }
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
