//
//  StatusViewModel.swift
//  ChatAppFirebase
//
//  Created by Berkay Disli on 3.07.2022.
//

import Foundation

enum UserStatus: CaseIterable {
    case available, busy, school, movies, work, batteryLow, meeting, gym, sleeping, urgentCallsOnly
    
    
    var title: String {
        switch self {
        case .available: return "Available"
        case .busy: return "Busy"
        case .school: return "At the school"
        case .movies: return "Watching a movie"
        case .work: return "Working"
        case .batteryLow: return "Low battery"
        case .meeting: return "In a meeting"
        case .gym: return "At the gym"
        case .sleeping: return "Sleeping"
        case .urgentCallsOnly: return "Urgent calls only"
        }
    }
    
}

class StatusViewModel: ObservableObject {
    @Published var userStatus: UserStatus = .available
    
    func updateStatus(status: UserStatus) {
        self.userStatus = status
    }
}
