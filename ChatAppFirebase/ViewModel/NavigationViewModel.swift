//
//  NavigationViewModel.swift
//  ChatAppFirebase
//
//  Created by Berkay Disli on 2.07.2022.
//

import Foundation

enum NavigationTabs: String, CaseIterable {
    case chats, channels, settings
    
    var title: String {
        switch self {
        case .chats:
            return "Chats"
        case .channels:
            return "Channels"
        case .settings:
            return "Settings"
        }
    }
    
    var image: String {
        switch self {
        case .chats:
            return "bubble.left"
        case .channels:
            return "bubble.left.and.bubble.right"
        case .settings:
            return "gear"
        }
    }
}

class NavigationViewModel: ObservableObject {
    @Published var tabSelection: NavigationTabs = .chats
    @Published var tabBarEnabled = true
    
    init() {
        
    }
    
    func selectTab(tab: NavigationTabs) {
        tabSelection = tab
    }
    func dismissTabBar() {
        tabBarEnabled = false
    }
    func enableTabBar() {
        tabBarEnabled = true
    }
}
