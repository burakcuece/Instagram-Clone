//
//  ChatInView.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 23.06.22.
//

import SwiftUI

struct ChatInView: View {
    
    @EnvironmentObject var viewMoel : ChatViewModel
    
    let chat: Chat
    
    @State private var text = ""
    @FocusState private var isFocused
    
    @State private var messageIDToScroll: UUID?
    
    var body: some View {
        Text("Hello, World!")
    }
}

struct ChatInView_Previews: PreviewProvider {
    static var previews: some View {
        ChatInView(chat: Chat.sampleChat[0])
            .environmentObject(ChatViewModel())
    }
}
