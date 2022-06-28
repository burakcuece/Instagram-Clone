//
//  ActionButtons.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 28.06.22.
//

import SwiftUI

struct ActionButtons: View {
    var reel: Reel
    
    var body: some View {
        
        VStack(spacing: 25) {
            
            Button {
                
            } label: {
                VStack(spacing: 10) {
                    Image(systemName: "suit.heart")
                        .font(.title)
                        .foregroundColor(Color.white)
                    
                    Text("233K")
                        .font(.caption.bold())
                        .foregroundColor(Color.white)
                }
            }
            
            Button {
                
            } label: {
                VStack(spacing: 10) {
                    Image(systemName: "bubble.right")
                        .font(.title)
                        .foregroundColor(Color.white)
                    
                    Text("120")
                        .font(.caption.bold())
                        .foregroundColor(Color.white)
                }
            }
            
            Button {
                
            } label: {
                VStack(spacing: 10) {
                    Image(systemName: "paperplane")
                        .font(.title)
                        .foregroundColor(Color.white)
                }
            }
            Button {
                
            } label: {
                Image("menu")
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.white)
                    .frame(width: 20, height: 20)
                    .rotationEffect(.init(degrees: 0))
            }

        }
    }
    
}
