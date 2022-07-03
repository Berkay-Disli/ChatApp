//
//  StatusSelectionPage.swift
//  ChatAppFirebase
//
//  Created by Berkay Disli on 3.07.2022.
//

import SwiftUI

struct StatusSelectionPage: View {
    @ObservedObject var statusVM: StatusViewModel
    
    var body: some View {
        ZStack(alignment: .top) {
            Color(.systemGroupedBackground).ignoresSafeArea()
            
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 0) {
                    Text("Current")
                        .foregroundColor(.gray)
                        .padding().padding(.top)
                    
                    Text(statusVM.userStatus.title).fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .frame(height: 56)
                        .padding(.leading)
                        .background(.white)
                    
                    Text("Select Status")
                        .foregroundColor(.gray)
                        .padding().padding(.top)
                    
                    ForEach(UserStatus.allCases, id:\.self) { status in
                        Button {
                            withAnimation(.easeInOut(duration: 0.2)) {
                                statusVM.updateStatus(status: status) }
                        } label: {
                            VStack(spacing: 0) {
                                Text(status.title)
                                    .foregroundColor(.black)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .frame(height: 56)
                                    .padding(.leading)
                                    .background(.white)
                                Divider()
                            }
                        }

                    }
                }
            }
            .padding(.top)
            
            
            
            Capsule().fill(.gray)
                .frame(width: 70, height: 3)
                .padding(.top)
        }
    }
}

struct StatusSelectionPage_Previews: PreviewProvider {
    static var previews: some View {
        StatusSelectionPage(statusVM: StatusViewModel())
    }
}
