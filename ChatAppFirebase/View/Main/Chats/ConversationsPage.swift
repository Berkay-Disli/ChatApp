//
//  ConversationsPage.swift
//  ChatAppFirebase
//
//  Created by Berkay Disli on 2.07.2022.
//

import SwiftUI

struct ConversationsPage: View {
    @EnvironmentObject var navVM: NavigationViewModel

    var body: some View {
        NavigationView {
            VStack {
                Text("Conversations")
                    .navigationTitle("Conversations")
                
                NavigationLink {
                    ChatView()
                } label: {
                    Text("Click me :)")
                }


            }
        }
    }
}

struct ConversationsPage_Previews: PreviewProvider {
    static var previews: some View {
        ConversationsPage()
            .environmentObject(NavigationViewModel())
    }
}
