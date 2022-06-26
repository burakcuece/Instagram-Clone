//
//  ChatView.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 23.06.22.
//

import SwiftUI

struct ChatView: View {
    @StateObject var viewModel = ChatViewModel()
    @State private var query = ""
    
    var body: some View {
        NavigationView {
            
            List {
                
                ForEach(viewModel.getSortedFilteredChats(query: query) ) { chat in
                    
                    ZStack {
                        
                        ChatRowView(chat: chat)
                        
                        NavigationLink {
                            ChatInView(chat: chat)
                                .environmentObject(viewModel)
                        } label: {
                            EmptyView()
                        }
                        .buttonStyle(PlainButtonStyle())
                        .frame(width: 0)
                        .opacity(0)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button(action: {
                            viewModel.marksAsUnread(!chat.hasUnreadMessage, chat: chat)
                        }) {
                            if chat.hasUnreadMessage {
                                Label("Gelesen", systemImage: "text.bubble")
                            } else {
                                Label("Ungelesen", systemImage: "circle.fill")
                            }
                        }
                        .tint(.blue)
                    }
                }
            }
            .listStyle(PlainListStyle())
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button(action: {}, label: {
                Image(systemName: "square.and.pencil")
            }))
            .searchable(text: $query, placement: .navigationBarDrawer(displayMode: .always), prompt: "Suche")

        }
        
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
        
    }
}

