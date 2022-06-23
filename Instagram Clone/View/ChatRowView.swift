//
//  ChatRowView.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 23.06.22.
//

import SwiftUI

struct ChatRowView: View {
    
    let chat: Chat
    
    var body: some View {
        HStack {
            Image(chat.person.imgString)
                .resizable()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            
            ZStack {
                VStack(alignment: .leading, spacing: 5) {
                    HStack {
                        Text(chat.person.name)
                            .bold()
                            .foregroundColor(Color.black)
                        
                        Spacer()
                        
                    }
                }
            }
        }
    }
}

struct ChatRowView_Previews: PreviewProvider {
    static var previews: some View {
        ChatRowView(chat: Chat.sampleChat[0])
    }
}
