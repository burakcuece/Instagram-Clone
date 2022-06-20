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
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(spacing: 8) {
                Image(post.profileImageName)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)
                Text(post.userName)
                    .font(.headline)
            }
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 0, trailing: 0))
            
            Image(post.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: screenWidth, height: 250)
                .clipped()
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
