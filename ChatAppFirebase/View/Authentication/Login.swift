//
//  Login.swift
//  ChatAppFirebase
//
//  Created by Berkay Disli on 1.07.2022.
//

import SwiftUI

struct Login: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                //header
                VStack(alignment: .leading) {
                    Text("Hello.")
                    Text("Welcome back.")
                        .foregroundColor(.orange)
                }
                .font(.largeTitle).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack(spacing: 40) {
                    CustomTextField(image: "envelope", placeholder: "email", text: $email, isSecure: false)
                    CustomTextField(image: "lock", placeholder: "password", text: $password, isSecure: true)
                }
                .padding([.horizontal, .top], 32)
                
                NavigationLink {
                    Text("Reset password page..")
                } label: {
                    Text("Forgot Password?")
                        .font(.system(size: 13)).fontWeight(.semibold)
                        .foregroundColor(.orange)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding()
                }

                
                
                Button {
                    
                } label: {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .frame(height: 50)
                        .background(.orange)
                        .clipShape(Capsule())
                        .shadow(color: .gray.opacity(0.2), radius: 5, x: 0, y: 5)
                        .padding(.horizontal)
                }


                
                
                Spacer()
                
                NavigationLink {
                    Registiration()
                } label: {
                    HStack(spacing: 4) {
                        Text("Don't have an account?")
                            .font(.system(size: 14))
                        Text("Sign up.")
                            .font(.system(size: 14)).fontWeight(.semibold)
                    }
                    .foregroundColor(.black)
                }

            }
            .padding()
            .navigationBarBackButtonHidden()
            .toolbar(.hidden)
            
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
