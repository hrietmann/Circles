//
//  CirclePage+Feed.swift
//  Circles
//
//  Created by Hans Rietmann on 29/09/2021.
//

import SwiftUI


extension CirclePage {
    
    
    struct Feed: View {
        var body: some View {
            ScrollView(showsIndicators: false) {
                LazyVGrid(columns: [.init(.flexible(minimum: 0, maximum: .infinity), spacing: 16, alignment: .top)], alignment: .leading, spacing: 16) {
                    Section {
                        ForEach((1...10), id: \.self) { _ in
                                CirclePage.Story()
                        }
                    } header: {
                        SearchBar(placeholder: "Search stories") {
                            EmptyView()
                        }
                    }

                }
//                .padding(.top, 16)
                .padding()
            }
//            .overlay(
//                LinearGradient(colors: [Color(.systemBackground),
//                                        Color(.systemBackground).opacity(0)],
//                               startPoint: .top,
//                               endPoint: .bottom)
//                    .frame(height: 32)
//                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
//            )
            .safeAreaInset(edge: .bottom) { CirclePage.Tab(selectedTab: .constant(0), presented: .constant(true)).hidden() }
        }
    }
    
    
}

struct CirclePage_Feed_Previews: PreviewProvider {
    static var previews: some View {
        CirclePage.Feed()
    }
}
