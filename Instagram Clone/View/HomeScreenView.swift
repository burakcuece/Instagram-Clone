//
//  HomeScreenView.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 16.06.22.
//

import SwiftUI

struct HomeScreenView: View {
    
    @EnvironmentObject var authentication: Authentication
    
    let posts: [Post] = [
        Post(id: 0, userName: "RapNews", text: "Streit zwischen Bushido, Animus und Manuellsen?", profileImageName: "Profil-1", imageName: "Thumbnail")
    ]
    
    let stories: [Story] = [
        Story(id: 0, imageName: "Profil-2")
    ]
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                List {
                    ScrollView(.horizontal, showsIndicators: false) {
                        CustomStoryView(stories: self.stories)
                        }
                    .frame(width: 76)
                    .clipped()
                    ForEach(self.posts, id: \.id) {(post) in
                        CustomPostView(post: post,screenWidth: geometry.size.width)
                    }
                }
                .navigationBarTitle(Text("Instagram"), displayMode: .inline)
                .navigationBarItems(leading: Button(action: {
                    print("Foto")
                }, label: {
                    Image(systemName: "camera")
                        .foregroundColor(Color.blue)
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                }), trailing: Button(action: {
                    print("Sende Nachricht")
                }, label: {
                    Image(systemName: "paperplane")
                        .foregroundColor(Color.blue)
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
