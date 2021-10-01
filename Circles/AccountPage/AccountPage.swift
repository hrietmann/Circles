//
//  AccountPage.swift
//  Circles
//
//  Created by Hans Rietmann on 30/09/2021.
//

import SwiftUI

struct AccountPage: View {
    
    let currentUser: Bool
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                AccountPage.Header(currentUser: currentUser)

                LazyVGrid(columns: [.init(.flexible(minimum: 0, maximum: .infinity), spacing: 16, alignment: .top)], alignment: .leading, spacing: 16, pinnedViews: .sectionHeaders) {
                    Section {
                        ForEach((0...5), id: \.self) { _ in
                            CirclePage.Story()
                        }
                    } header: {
                        SearchBar(placeholder: "Search stories") {
                            EmptyView()
                        }
                    }

                }
                .padding(.horizontal)
                .padding(.bottom)
            }
            .padding(.top)
        }
        .navigationBarHidden(true)
        .safeAreaInset(edge: .top) {
            NavigationBar(title: nil) {
                EmptyView()
            } leading: {
                EmptyView()
            } trailing: {
                Group {
                    if currentUser {
                        Image(systemName: "gearshape")
                            .font(.title3)
                    }
                }
            } footer: {
                EmptyView()
            }

        }
        .safeAreaInset(edge: .bottom) {
            AccountPage.Footer(currentUser: currentUser)
        }
    }
}

struct AccountPage_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AccountPage(currentUser: true)
        }
    }
}
