//
//  UserConversationsCell.swift
//  ChatAppFirebase
//
//  Created by Berkay Disli on 4.07.2022.
//

import SwiftUI

struct ConversationCell: View {
    var body: some View {
        HStack {
            Image(systemName: "person")
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text("Seda Dişli")
                    .font(.system(size: 14)).fontWeight(.semibold)
            }
        }
    }
}

struct UserConversationsCell_Previews: PreviewProvider {
    static var previews: some View {
        ConversationCell()
    }
}
