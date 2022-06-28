//
//  ReelsPlayer.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 28.06.22.
//

import SwiftUI

struct ReelsPlayer: View {
    
    @Binding var reel: Reel
    
   @State var showMore = false
    
    var body: some View {
        
        ZStack {
            
            if let player = reel.player {
                
                CustomVideoPlayer(player: player)
                
                Color.black.opacity(showMore ? 0.35 : 0)
                    .onTapGesture {
                        
                        withAnimation {showMore.toggle()}
                    }
                
                VStack {
                    
                    HStack(alignment: .bottom) {
                        
                        VStack(alignment: .leading, spacing: 10) {
                            
                            HStack(spacing: 15) {
                                
                                Image("Profil-1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 35, height: 35)
                                    .clipShape(Circle())
                                
                                Text("Max Mustermann")
                                    .font(.callout.bold())
                                    .foregroundColor(Color.white)
                                
                                Button {
                                    
                                } label: {
                                    Text("Folgen")
                                        .font(.callout.bold())
                                        .foregroundColor(Color.white)
                                    
                                }
                                
                            }
                            
                            ZStack {
                                
                                if showMore {
                                    
                                    ScrollView(.vertical, showsIndicators: false) {
                                        
                                        Text(reel.mediaFile.title + sampleText)
                                            .font(.callout)
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color.white)
                                    }
                                    .frame(height: 120)
                                    .onTapGesture {
                                        withAnimation{showMore.toggle()}
                                    }
                                } else {
                                    
                                    Button {
                                        
                                        withAnimation{showMore.toggle()}
                                        
                                    } label: {
                                        HStack {
                                            
                                            Text(reel.mediaFile.title)
                                                .font(.callout)
                                                .fontWeight(.semibold)
                                                .lineLimit(1)
                                                .foregroundColor(Color.white)
                                            
                                            Text("mehr")
                                                .font(.callout.bold())
                                                .foregroundColor(Color.gray)
                                        }
                                        .padding(.top, 6)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    }

                                }
                            }
                            
                        }
                        
                        Spacer(minLength: 20)
                        
                        //
                        
                        ActionButtons(reel: reel)
                        
                    }
                }
                .padding(.horizontal)
                .padding(.bottom, 20)
                .foregroundColor(Color.white)
                .frame(maxHeight: .infinity, alignment: .bottom)
            }
            
        }
        
    }
}

let sampleText = "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut!"
