//
//  MediaFile.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 27.06.22.
//

import SwiftUI

struct MediaFile: Identifiable {
    var id = UUID().uuidString
    var url: String
    var title: String
    var isExpanded: Bool = false
}

var MediaFileJSON = [
    MediaFile(url: "Reel-1", title: "Fantastic mountains"),
    MediaFile(url: "Reel-2", title: "Work Work Work!"),
    MediaFile(url: "Reel-3", title: "Gorgeous City")
]
