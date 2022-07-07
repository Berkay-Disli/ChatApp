//
//  MessageCell.swift
//  ChatAppFirebase
//
//  Created by Berkay Disli on 7.07.2022.
//

import SwiftUI

struct MessageCell: View {
    let isFromUser: Bool
    let text: String
    let img: String
    var body: some View {
        HStack {
            if isFromUser {
                Text(text)
                    .padding(12)
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                    .background(Color(.orange))
                    .clipShape(ChatBubble(isFromUser: true))
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.horizontal).padding(.leading, 70)
            } else {
                HStack(alignment: .bottom) {
                    Image(img)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .clipShape(Circle())
                    
                    Text(text)
                        .padding(12)
                        .foregroundColor(.black)
                        .font(.system(size: 15))
                        .background(Color(.systemGray5))
                        .clipShape(ChatBubble(isFromUser: false))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .padding(.trailing, 70)
            }
        }
    }
}

struct MessageCell_Previews: PreviewProvider {
    static var previews: some View {
        MessageCell(isFromUser: true, text: "Some text message.Some text message.Some text message.", img: "sedadisli")
    }
}
