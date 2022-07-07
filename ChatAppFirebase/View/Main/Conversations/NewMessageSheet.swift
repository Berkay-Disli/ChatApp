//
//  NewMessageSheet.swift
//  ChatAppFirebase
//
//  Created by Berkay Disli on 4.07.2022.
//

import SwiftUI

struct NewMessageSheet: View {
    @Binding var showChatView: Bool
    @Environment(\.dismiss) var dismiss
    @State private var searchText = ""
    @State private var isEditing = false
    
    var body: some View {
        VStack {
            SearchBar(text: $searchText, isEditing: $isEditing)
            ScrollView {
                LazyVStack {
                    ForEach(1...16, id:\.self) { item in
                        Button {
                            showChatView.toggle()
                            dismiss()
                        } label: {
                            UserCell()
                        }

                    }
                }
            }
        }

    }
}

struct NewMessageSheet_Previews: PreviewProvider {
    static var previews: some View {
        NewMessageSheet(showChatView: .constant(false))
    }
}
