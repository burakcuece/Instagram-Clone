//
//  ReelsView.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 27.06.22.
//

import SwiftUI
import AVKit

struct ReelsView: View {
    
    @State var currentReel = ""
    @State var reels = MediaFileJSON.map { item -> Reel in
        
        let url = Bundle.main.path(forResource: item.url, ofType: "mp4") ?? ""
        
        let player = AVPlayer(url: URL(fileURLWithPath: url))
        
        return Reel(player: player, mediaFile: item)
    }
    
    var body: some View {
        
        GeometryReader { proxy in
            
            let size = proxy.size
            
            TabView(selection: $currentReel) {
                ForEach($reels) { $reel in
                    
                    ReelsPlayer(reel: $reel, currentReel: $currentReel)
                    .frame(width: size.width)
                    
                    .rotationEffect(.init(degrees: -90))
                    .ignoresSafeArea(.all, edges: .top)
                    .tag(reel.id)


                }
            }
            .rotationEffect(.init(degrees: 90))
            .frame(width: size.height)
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(width: size.width)
        }
        .ignoresSafeArea(.all, edges: .top)
        .background(Color.black.ignoresSafeArea() )
        .onAppear {
            currentReel = reels.first?.id ?? ""
        }
    }
}

struct ReelsView_Previews: PreviewProvider {
    static var previews: some View {
        ReelsView()
    }
}
