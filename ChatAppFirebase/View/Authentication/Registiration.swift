//
//  Registiration.swift
//  ChatAppFirebase
//
//  Created by Berkay Disli on 1.07.2022.
//

import SwiftUI

struct Registiration: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
    
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Get started.")
                Text("Create your account.")
                    .foregroundColor(.orange)
            }
            .font(.largeTitle).bold()
            .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack(spacing: 40) {
                CustomTextField(image: "envelope", placeholder: "email", text: $email, isSecure: false)
                CustomTextField(image: "person", placeholder: "username", text: $email, isSecure: false)
                CustomTextField(image: "person", placeholder: "fullname", text: $email, isSecure: false)
                CustomTextField(image: "lock", placeholder: "password", text: $password, isSecure: true)
            }
            .padding([.horizontal, .top], 32)
            
            Button {
                
            } label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .frame(height: 50)
                    .background(.orange)
                    .clipShape(Capsule())
                    .shadow(color: .gray.opacity(0.2), radius: 5, x: 0, y: 5)
                    .padding(.horizontal).padding(.top, 24)
            }
            
            
            Spacer()
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 4) {
                    Text("Don't have an account?")
                        .font(.system(size: 14))
                    Text("Sign up.")
                        .font(.system(size: 14)).fontWeight(.semibold)
                }
                .foregroundColor(.black)
            }
            .toolbar(.hidden)
        }
        .padding()
    }
}

struct Registiration_Previews: PreviewProvider {
    static var previews: some View {
        Registiration()
    }
}
