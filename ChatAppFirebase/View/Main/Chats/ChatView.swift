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
                    ForEach(0...9, id:\.self) { item in
                        MessageCell(isFromUser: true, text: "Ahahah", img: "sedadisli")
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
