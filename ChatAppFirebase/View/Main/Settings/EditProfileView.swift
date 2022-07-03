//
//  EditProfileView.swift
//  ChatAppFirebase
//
//  Created by Berkay Disli on 2.07.2022.
//

import SwiftUI

struct EditProfileView: View {
    @EnvironmentObject var navVM: NavigationViewModel
    @State private var fullname = "Berkay Dişli"
    @Environment(\.dismiss) var dismiss
    @State private var sheetIsOn = false
    @StateObject var statusVM = StatusViewModel()
    
    var body: some View {
        ZStack(alignment: .top) {
            Color(.systemGroupedBackground).ignoresSafeArea()
            
            VStack {
                VStack {
                    HStack {
                        VStack {
                            Image(systemName: "person")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 64, height: 64)
                                .clipShape(Circle())
                            
                            Button {
                                
                            } label: {
                                Text("Edit")
                                    .foregroundColor(.orange)
                            }
                        }
                        
                        Text("Enter your name or change your profile photo")
                            .font(.system(size: 16))
                            .foregroundColor(.gray)
                            .padding([.bottom, .horizontal])
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                    Divider()
                    
                    TextField("", text: $fullname)
                        .padding(8).padding(.vertical, 2)
                }
                .padding(.top)
                .background(.white)
                .padding(.top)
                
                VStack(alignment: .leading) {
                    Text("Status")
                        .foregroundColor(.gray)
                        .padding()
                    
                    Button {
                        sheetIsOn.toggle()
                    } label: {
                        HStack {
                            Text(statusVM.userStatus.title)
                                .foregroundColor(.black)
                            Spacer()
                            Image(systemName: "pencil")
                                .foregroundColor(.gray)
                        }
                        .padding()
                        .background(.white)
                    }

                }
                .padding(.top, 32)
                
                
                Spacer()
            }
        }
        .navigationTitle("Edit Profile")
        .navigationBarBackButtonHidden()
        .navigationBarTitleDisplayMode(.inline)
        .sheet(isPresented: $sheetIsOn, content: {
            StatusSelectionPage(statusVM: statusVM)
                .presentationDetents([.height(770)])
        })
        .toolbar(content: {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .onTapGesture {
                        dismiss()
                    }
            }
        })
        .onAppear {
            navVM.dismissTabBar()
        }
        .onDisappear {
            navVM.enableTabBar()
        }
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            EditProfileView()
                .environmentObject(NavigationViewModel())
        }
    }
}
