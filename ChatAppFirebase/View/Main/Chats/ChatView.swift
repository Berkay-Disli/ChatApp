//
//  ChatView.swift
//  ChatAppFirebase
//
//  Created by Berkay Disli on 2.07.2022.
//

import SwiftUI

struct ChatView: View {
    @EnvironmentObject var navVM: NavigationViewModel

    var body: some View {
        Text("Chat View :)))))")
            //.toolbar(.hidden)
            .onAppear {
                navVM.dismissTabBar()
            }
            .onDisappear {
                navVM.enableTabBar()
            }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
            .environmentObject(NavigationViewModel())
    }
}
