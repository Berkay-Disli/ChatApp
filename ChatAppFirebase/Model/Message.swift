//
//  Message.swift
//  ChatAppFirebase
//
//  Created by Berkay Disli on 9.07.2022.
//

import Foundation

struct Message: Identifiable {
    let id = UUID().uuidString
    let isFromUser: Bool
    let text: String
}
