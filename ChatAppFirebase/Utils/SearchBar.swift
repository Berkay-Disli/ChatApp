//
//  SearchBar.swift
//  ChatAppFirebase
//
//  Created by Berkay Disli on 7.07.2022.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @Binding var isEditing: Bool
    
    var body: some View {
        HStack {
            TextField("", text: $text)
                .placeholder(when: text.isEmpty, placeholder: {
                    Text("Search")
                        .foregroundColor(.black.opacity(0.5))
                })
                .padding(8).padding(.horizontal, 29)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(alignment: .leading) {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                        .padding(.leading, 8)
                }
                .onTapGesture {
                    isEditing.toggle()
                }
            
            if isEditing {
                Button {
                    isEditing = false
                    hideKeyboard()
                    text = ""
                } label: {
                    Text("Cancel")
                        .foregroundColor(.black)
                        .padding(.trailing, 8)
                        .transition(AnyTransition.move(edge: .trailing).animation(.easeInOut))
                }

            }
        }
        .padding()
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""), isEditing: .constant(false))
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {
            
            ZStack(alignment: alignment) {
                placeholder().opacity(shouldShow ? 1 : 0)
                self
            }
        }
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
