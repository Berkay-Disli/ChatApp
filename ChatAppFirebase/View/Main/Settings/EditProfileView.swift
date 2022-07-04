//
//  EditProfileView.swift
//  ChatAppFirebase
//
//  Created by Berkay Disli on 2.07.2022.
//

import SwiftUI
import PhotosUI

struct EditProfileView: View {
    @EnvironmentObject var navVM: NavigationViewModel
    @State private var fullname = "Berkay Dişli"
    @Environment(\.dismiss) var dismiss
    @State private var sheetIsOn = false
    @StateObject var statusVM = StatusViewModel()
    @State private var showImagePicker = false
    @State var image: UIImage? = nil
    
    var body: some View {
        ZStack(alignment: .top) {
            Color(.systemGroupedBackground).ignoresSafeArea()
            
            VStack {
                VStack {
                    HStack {
                        VStack {
                            if let image {
                                Image(uiImage: image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 64, height: 64)
                                    .clipShape(Circle())
                            } else {
                                Image("berkay")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 64, height: 64)
                                    .clipShape(Circle())
                            }
                            
                            Button {
                                showImagePicker.toggle()
                            } label: {
                                Text("Edit")
                                    .foregroundColor(.orange)
                            }
                            .fullScreenCover(isPresented: $showImagePicker) {
                                PhotoPicker(filter: .images, limit: 1) { results in
                                    PhotoPicker.convertToUIImageArray(fromResults: results) { (imagesOrNil, errorOrNil) in
                                                if let error = errorOrNil {
                                                  print(error)
                                                }
                                                if let images = imagesOrNil {
                                                  if let first = images.first {
                                                    print(first)
                                                    image = first
                                                  }
                                                }
                                              }
                                }
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
