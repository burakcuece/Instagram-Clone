//
//  HomeScreenView.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 16.06.22.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                
                List {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            Text("Story 1")
                            Text("Story 2")
                            Text("Story 3")
                            Text("Story 4")
                            Text("Story 5")
                        }
                    }
                    VStack(alignment: .leading, spacing: 8) {
                        HStack(spacing: 8) {
                            Image("Profil-1")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 50, height: 50)
                            Text("username")
                                .font(.headline)
                                .padding(EdgeInsets(top: 8, leading: 16, bottom: 0, trailing: 0))
                        }
                        Image("Thumbnail 2")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width, height: 250)
                            .clipped()
                        Text("Beschreibung")
                            .lineLimit(nil)
                            .font(.system(size: 15))
                            .padding(.leading, 16)
                            .padding(.bottom, 16)
                    }
                    .listRowInsets(EdgeInsets())
                }
                .navigationBarTitle(Text("Instagram"), displayMode: .inline)
                .navigationBarItems(leading: Button(action: {
                    print("Foto")
                }, label: {
                    Image(systemName: "camera")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                }), trailing: Button(action: {
                    print("Sende nachricht")
                }, label: {
                    Image(systemName: "paperplane")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                }))
                .listStyle(.plain)
            }
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
