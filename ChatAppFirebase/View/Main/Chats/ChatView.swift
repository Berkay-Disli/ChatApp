//
//  ChatView.swift
//  ChatAppFirebase
//
//  Created by Berkay Disli on 2.07.2022.
//

import SwiftUI

struct ChatView: View {
    @EnvironmentObject var navVM: NavigationViewModel
    @Environment(\.dismiss) var dismiss
    @State private var textMessage = ""
    @StateObject var msgVM = MessageViewModel()
    
    var body: some View {
        VStack(spacing: 0) {
            HStack(alignment: .bottom) {
                Image(systemName: "chevron.left")
                    .onTapGesture {
                        dismiss()
                    }
                Spacer()
                Text("Seda Araz").bold()
                Spacer()
                
            }
            .padding()
            Divider()
                
            ScrollView {
                LazyVStack( spacing: 12) {
                    ForEach(msgVM.messages) { item in
                        MessageCell(isFromUser: item.isFromUser, text: item.text, img: "sedadisli")
                    }
                }
                .padding(.top)
            }
            
            CustomInputView(text: $textMessage)
        }
        .navigationBarBackButtonHidden()
        
        .onAppear {
            navVM.dismissTabBar()
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
            .environmentObject(NavigationViewModel())
    }
}
