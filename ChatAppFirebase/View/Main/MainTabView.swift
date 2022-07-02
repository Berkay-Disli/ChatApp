//
//  MainTabView.swift
//  ChatAppFirebase
//
//  Created by Berkay Disli on 2.07.2022.
//

import SwiftUI

struct MainTabView: View {
    @EnvironmentObject var navVM: NavigationViewModel
    
    
    var body: some View {
        ZStack {
            switch navVM.tabSelection {
                
            case .chats:
                ConversationsPage()
                    .transition(AnyTransition.opacity.animation(.easeInOut))
            case .channels:
                ChannelsPage()
                    .transition(AnyTransition.opacity.animation(.easeInOut))
            case .settings:
                SettingsPage()
                    .transition(AnyTransition.opacity.animation(.easeInOut))
            }
            
            
            
            if navVM.tabBarEnabled {
                // Nav Bar
                VStack(spacing: 15) {
                    Divider()
                        .padding(.top, 4)
                    HStack {
                        ForEach(NavigationTabs.allCases, id:\.self) { item in
                            Spacer()
                            VStack(spacing: 4) {
                                Image(systemName: item.image)
                                    .font(.title2)
                                    .foregroundColor(navVM.tabSelection == item ? .black:.gray)
                            }
                            .padding(.bottom, 35)
                            .onTapGesture {
                                withAnimation(.easeInOut) {
                                    navVM.selectTab(tab: item)
                                }
                            }
                            Spacer()
                        }
                    }
                    .padding(.bottom)
                }
                .frame(width: UIScreen.main.bounds.width, height: 90)
                .background(.white)
                .frame(maxHeight: .infinity, alignment: .bottom)
                .transition(AnyTransition.opacity.animation(.easeInOut))
            }
        }
        .ignoresSafeArea()
        
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
            .environmentObject(NavigationViewModel())
    }
}
