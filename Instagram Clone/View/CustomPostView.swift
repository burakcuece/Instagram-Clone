//
//  CustomPostView.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 16.06.22.
//

import SwiftUI

struct CustomPostView: View {
    
    let post: Post
    let screenWidth: CGFloat
    @State var showLike = false
    @State var comment = ""
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 8) {
            HStack(spacing: 8) {
                
                Button {
                    print("Profil")
                } label: {
                    Image(post.profileImageName)
                        .resizable()
                        .foregroundColor(Color.black)
                        .clipShape(Circle())
                        .frame(width: 60, height: 60)
                }
                .buttonStyle(PlainButtonStyle())
                
                Button {
                    print("Profil")
                } label: {
                    Text(post.userName)
                        .font(.headline)
                        .foregroundColor(Color.black)
                }
                .buttonStyle(PlainButtonStyle())

            }
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 0, trailing: 0))
            
            ZStack {
                
                Image(post.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: screenWidth, height: 250)
                    .clipped()
                    .onTapGesture(count: 2) {
                        withAnimation {
                            showLike.toggle()
                        }
                        
                        DispatchQueue.main.asyncAfter(deadline: .now()+1) {
                            withAnimation {
                                showLike.toggle()
                            }
                        }
                    }
                
                Image(systemName: "heart.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.white)
                    .frame(width: 100, height: 100)
                    .opacity(showLike ? 1 : 0)
                    .animation(Animation.linear(duration: 0.1))
            }
            
            HStack(spacing: 15) {
                
                Button {
                    print("like")
                } label: {
                    Image(systemName: "heart")
                        .resizable()
                        .foregroundColor(Color.black)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 25, height: 25, alignment: .leading)
                }
                .buttonStyle(PlainButtonStyle())
                
                Button {
                    print("comment")
                } label: {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .foregroundColor(Color.black)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 25, height: 25, alignment: .leading)
                }
                .buttonStyle(PlainButtonStyle())
                
                
                Button {
                    print("message")
                } label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .foregroundColor(Color.black)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 25, height: 25, alignment: .leading)
                }
                .buttonStyle(PlainButtonStyle())
                
                
            }
            
            HStack {
                
                
                Button {
                    print("Profil")
                } label: {
                    Text(post.userName)
                        .bold()
                        .foregroundColor(Color.black)
                        .padding(.bottom, 41)
                    
                }
                .buttonStyle(PlainButtonStyle())
                Text(post.text)
                    .padding(.bottom)
                    .foregroundColor(Color.black)

                
            }
            
        }
        .listRowInsets(EdgeInsets())
    }
}
