//
//  UserCell.swift
//  ChatAppFirebase
//
//  Created by Berkay Disli on 4.07.2022.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        VStack {
            HStack {
                Image("sedadisli")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Pheonix")
                        .font(.system(size: 15)).fontWeight(.semibold)
                    
                    Text("Seda Dişli")
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

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
