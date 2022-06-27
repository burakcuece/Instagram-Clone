//
//  Reel.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 28.06.22.
//

import Foundation
import AVKit

struct Reel: Identifiable {
    
    var id = UUID().uuidString
    var player: AVPlayer?
    var mediaFile: MediaFile
}
