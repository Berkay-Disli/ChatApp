//
//  UserConversationsCell.swift
//  ChatAppFirebase
//
//  Created by Berkay Disli on 4.07.2022.
//

import SwiftUI

struct ConversationCell: View {
    var body: some View {
        VStack {
            HStack {
                Image("sedadisli")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Seda Araz")
                        .font(.system(size: 15)).fontWeight(.semibold)
                    
                    Text("Some text message for now...")
                        .font(.system(size: 16))
                }
                .padding(.leading, 10)
                .foregroundColor(.black)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal).padding(.vertical, 10)
            
            Divider()
        }
    }
}

struct ConversationCell_Previews: PreviewProvider {
    static var previews: some View {
        ConversationCell()
    }
}
