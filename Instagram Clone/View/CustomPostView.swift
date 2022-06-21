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
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 8) {
            HStack(spacing: 8) {
                Image(post.profileImageName)
                    .resizable()
                    .foregroundColor(Color.black)
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)
                Text(post.userName)
                    .font(.headline)
                    .foregroundColor(Color.black)

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
            
            Text(post.text)
                .foregroundColor(Color.black)
                .lineLimit(nil)
                .font(.system(size: 15))
                .padding(.leading, 16)
                .padding(.trailing, 16)
                .padding(.bottom, 16)
        }
        .listRowInsets(EdgeInsets())
    }
}
