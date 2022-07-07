//
//  ConversationsPage.swift
//  ChatAppFirebase
//
//  Created by Berkay Disli on 2.07.2022.
//

import SwiftUI

struct ConversationsPage: View {
    @EnvironmentObject var navVM: NavigationViewModel
    @State private var showNewMessageSheet = false
    @State private var showChatView = false
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
                
                NavigationLink(destination: ChatView(), isActive: $showChatView) {}
                
                ScrollView {
                    LazyVStack {
                        ForEach(1...16, id:\.self) { item in
                            NavigationLink {
                                ChatView()
                            } label: {
                                ConversationCell()
                            }

                        }
                    }
                }
                .padding(.top)
                
                
                
                Button {
                    showNewMessageSheet.toggle()
                } label: {
                    Image(systemName: "square.and.pencil")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                        .padding()
                        .background(.orange)
                        .clipShape(Circle())
                        .foregroundColor(.white)
                        .padding(.trailing).padding(.bottom, 70)
                        .shadow(color: .gray.opacity(0.2), radius: 5, x: 0, y: 5)
                }
                .sheet(isPresented: $showNewMessageSheet) {
                    NewMessageSheet(showChatView: $showChatView)
                        .presentationDetents([.height(520), .large])
                }

            }
            .navigationTitle("Conversations")
        }
    }
}

struct ConversationsPage_Previews: PreviewProvider {
    static var previews: some View {
        ConversationsPage()
            .environmentObject(NavigationViewModel())
    }
}
