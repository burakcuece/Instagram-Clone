//
//  ChatModel.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 23.06.22.
//

import Foundation

struct Chat: Identifiable {
    var id: UUID { person.id }
    let person: Person
    var messages: [Message]
    var hasUnreadMessage = false
}

struct Person: Identifiable {
    let id = UUID()
    let name: String
    let imgString: String
}

struct Message: Identifiable {
    
    enum MessageType {
        case Sent, Received
    }
    
    let id = UUID()
    let date: Date
    let text: String
    let type: MessageType
    
    init(_ text: String, type: MessageType, date: Date) {
        self.date = date
        self.type = type
        self.text = text
    }
    init(_ text: String, type: MessageType) {
        self.init(text, type: type, date: Date())
    }
}

extension Chat {
    
    static let sampleChat = [
        Chat(person: Person(name: "Max Mustermann", imgString: "Profil-1"), messages: [
            Message("Hey", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Wie gehts", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Hey, gut und dir?", type: .Received, date: Date())
        ], hasUnreadMessage: true)
    ]
 }
            
