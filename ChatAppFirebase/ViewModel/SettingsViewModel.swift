//
//  SettingsViewModel.swift
//  ChatAppFirebase
//
//  Created by Berkay Disli on 2.07.2022.
//

import Foundation
import SwiftUI

enum SettingsCellViewModel: CaseIterable {
    case account, notifications, starredMessages
    
    var title: String {
        switch self {
        case .account:
            return "Account"
        case .notifications:
            return "Notifications"
        case .starredMessages:
            return "Starred Messages"
        }
    }
    
    var background: Color {
        switch self {
        case .account:
            return .blue
        case .notifications:
            return .red
        case .starredMessages:
            return .yellow
        }
    }
    
    var image: String {
        switch self {
        case .account:
            return "person.fill"
        case .notifications:
            return "bell.fill"
        case .starredMessages:
            return "star.fill"
        }
    }
}
