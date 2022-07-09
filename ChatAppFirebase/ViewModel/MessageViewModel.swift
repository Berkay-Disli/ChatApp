//
//  MessageViewModel.swift
//  ChatAppFirebase
//
//  Created by Berkay Disli on 9.07.2022.
//

import Foundation

class MessageViewModel: ObservableObject {
    @Published var messages = [Message]()
    
    init() {
        getMessages()
    }
    
    func getMessages() {
        messages = [Message(isFromUser: true, text: "Hello"),
                    Message(isFromUser: false, text: "Hi there"),
                    Message(isFromUser: true, text: "Guess what"),
                    Message(isFromUser: true, text: "You are the first person to be able to talk in this app 🥳"),
                    Message(isFromUser: false, text: "Wow lmao"),
                    Message(isFromUser: true, text: "What a reaction..")]
    }
}
