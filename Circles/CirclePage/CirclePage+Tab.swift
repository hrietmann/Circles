//
//  CirclePage+Tab.swift
//  Circles
//
//  Created by Hans Rietmann on 29/09/2021.
//

import SwiftUI



extension CirclePage {
    
    struct Tab: View {
        
        @Binding var selectedTab: Int
        @Binding var presented: Bool
        
        var body: some View {
            HStack(spacing: 38) {
                Button {
                    selectedTab = 0
                } label: {
                    Text("👨‍👩‍👦‍👦")
                }
                .frame(width: 30, height: 30)
                .background(
                    Color
                        .pink
                        .brightness(0.5)
                        .clipShape(Circle())
                        .padding(-7)
                        .opacity(selectedTab == 0 ? 1:0)
                        .scaleEffect(selectedTab == 0 ? 1:0.3)
                        .blur(radius: selectedTab == 0 ? 0:8)
                )
                
                Button {
                    selectedTab = 1
                } label: {
                    Image(systemName: selectedTab == 1 ? "person.2.fill":"person.2")
                }
                .frame(width: 30, height: 30)
                .overlay(notificationDot)
                
                
                Button {
                    presented.toggle()
                } label: {
                    Image(systemName: "square.grid.2x2")
                }
                .frame(width: 30, height: 30)
            }
            .font(.title2)
            .foregroundColor(Color(.label))
            .padding(.vertical)
            .padding(.horizontal, 18)
            .background(.regularMaterial)
            .clipShape(Capsule())
            .overlay(
                Capsule()
                    .stroke(Color(.quaternaryLabel), lineWidth: 0.5)
            )
            .shadow(color: .black.opacity(0.4), radius: 16, x: 0, y: 8)
            .padding(.bottom)
            .frame(maxWidth: .infinity, alignment: .top)
            .background(LinearGradient(colors: [Color.black.opacity(0.2),
                                                Color.black.opacity(0)],
                                       startPoint: .bottom,
                                       endPoint: .top),
                        ignoresSafeAreaEdges: .bottom)
        }
        
        var notificationDot: some View {
            Circle()
                .foregroundColor(.red)
                .frame(width: 14, height: 14)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                .offset(x: 6, y: -6)
        }
    }
    
}


struct CirclePage_Tab_Previews: PreviewProvider {
    static var previews: some View {
        CirclePage.Tab(selectedTab: .constant(0), presented: .constant(true))
    }
}
