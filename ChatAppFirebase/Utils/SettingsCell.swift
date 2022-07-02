//
//  SettingsCell.swift
//  ChatAppFirebase
//
//  Created by Berkay Disli on 2.07.2022.
//

import SwiftUI

struct SettingsCell: View {
    let image: String
    let background: Color
    let text: String
    var body: some View {
        VStack {
            HStack {
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 22, height: 22)
                    .padding(6)
                    .background(background)
                    .cornerRadius(6)
                    .foregroundColor(.white)
                
                Text(text)
                    .font(.system(size: 15))
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }
            .padding(.top)
            
            Divider()
        }
        .padding(.horizontal)
        .background(.white)
    }
}

struct SettingsCell_Previews: PreviewProvider {
    static var previews: some View {
        SettingsCell(image: "lock", background: .yellow, text: "Person ")
    }
}
