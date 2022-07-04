//
//  SettingsPage.swift
//  ChatAppFirebase
//
//  Created by Berkay Disli on 2.07.2022.
//

import SwiftUI

struct SettingsPage: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(.systemGroupedBackground).ignoresSafeArea()
                
                VStack(spacing: 32) {
                    NavigationLink {
                        EditProfileView()
                    } label: {
                        HStack {
                            Image("berkay")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 64)
                                .clipShape(Circle())
                                .padding(.leading)
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Berkay Dişli")
                                    .font(.system(size: 18))
                                Text("Available")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14))
                            }
                            Spacer()
                        }
                        .frame(height: 80)
                        .background(.white)
                        .padding(.top)
                        .foregroundColor(.black)
                    }

                    
                    VStack(spacing: 0) {
                        ForEach(SettingsCellViewModel.allCases, id:\.self) { item in
                            SettingsCell(image: item.image, background: item.background, text: item.title)
                        }
                        
                        Button {
                            
                        } label: {
                            Text("Sign Out")
                                .foregroundColor(.red)
                                .font(.system(size: 16)).fontWeight(.semibold)
                                .frame(width: UIScreen.main.bounds.width, height: 50)
                                .background(.white)
                                .padding(.top, 24)
                        }
                    }
                    .padding(.top)
                    
                    Spacer()
                }
                
                
                
                
                
            }
            
            
                .navigationTitle("Settings")
        }
    }
}

struct SettingsPage_Previews: PreviewProvider {
    static var previews: some View {
        SettingsPage()
    }
}
