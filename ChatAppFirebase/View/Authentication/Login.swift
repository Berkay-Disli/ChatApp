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
                
                VStack(spacing: 20) {
                    CustomTextfield
                    CustomPasswordField
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

extension Login {
    var CustomTextfield: some View {
        VStack(spacing: 16) {
            HStack {
                Image(systemName: "envelope")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.gray)
                TextField("email", text: $email)
                    .autocorrectionDisabled()
                    .textInputAutocapitalization(.never)
            }
            Divider()
                .background(.gray)
        }
    }
    
    var CustomPasswordField: some View {
        VStack(spacing: 16) {
            HStack {
                Image(systemName: "lock")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.gray)
                SecureField("password", text: $password)
                    .autocorrectionDisabled()
                    .textInputAutocapitalization(.never)
            }
            Divider()
                .background(.gray)
        }
    }
}
