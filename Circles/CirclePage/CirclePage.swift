//
//  CirclePage.swift
//  Circles
//
//  Created by Hans Rietmann on 29/09/2021.
//

import SwiftUI

struct CirclePage: View {
    
    
    @Binding var presented: Bool
    @State private var selectedTab = 0
    @State private var welcome = false
    
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                Header()
                
                // Feed
                TabView(selection: $selectedTab.animation(.easeIn)) {
                    Feed().tag(0)
                    FriendsPage().tag(1)
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                .edgesIgnoringSafeArea(.bottom)
                .safeAreaInset(edge: .bottom) {
                    Tab(selectedTab: $selectedTab.animation(.easeOut), presented: $presented)
                }
            }
        }
//        .onAppear {
//            guard !welcome else { return }
//            welcome = true
//        }
        .fullScreenCover(isPresented: $welcome, content: {
            WelcomePage(presented: $welcome)
        })
        .navigationTitle("")
        .navigationBarHidden(false)
    }
}

struct CirclePage_Previews: PreviewProvider {
    static var previews: some View {
        CirclePage(presented: .constant(true))
    }
}
