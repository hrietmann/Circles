//
//  FriendsPage.swift
//  Circles
//
//  Created by Hans Rietmann on 30/09/2021.
//

import SwiftUI

struct FriendsPage: View {
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: [.init(.flexible(minimum: 0, maximum: .infinity), spacing: 16, alignment: .top)], alignment: .leading, spacing: 16, pinnedViews: .sectionHeaders) {
                Section {
                    invites
                    ForEach((0...20), id: \.self) { _ in
                        FriendsPage.FriendRow()
                    }
                } header: {
                    SearchBar(placeholder: "Search friends") {
                        Button {
                            
                        } label: {
                            Text("Invite").fontWeight(.semibold)
                        }
                        .tint(.blue)
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.capsule)
                    }
                }

            }
            .padding()
        }
        .navigationBarHidden(true)
        .safeAreaInset(edge: .bottom) {
            CirclePage.Tab(selectedTab: .constant(0), presented: .constant(true))
                .hidden()
        }
    }
    
    var invites: some View {
        NavigationLink {
            RequestsPage()
        } label: {
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        HStack {
                            Circle()
                                .foregroundColor(.red)
                                .frame(width: 14, height: 14)
                            Text("New requests to join the circle :")
                                .font(.footnote)
                                .fontWeight(.medium)
                                .foregroundColor(.secondary)
                        }
                        .padding(.top, 4)
                    .padding(.leading, 4)
                        HStack {
                            HStack(spacing: -16) {
                                invitePerson
                                invitePerson
                                invitePerson
                            }
                            Text("+4")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundColor(Color(.label))
                        }
                    }

                    Spacer()
                    
                    Image(systemName: "chevron.forward")
                        .font(.subheadline.weight(.medium))
                        .foregroundColor(.secondary)
                        .padding(12)

                }
            }
            .padding(12)
            .background(Color(.systemGroupedBackground))
            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            .overlay(
                RoundedRectangle(cornerRadius: 16, style: .continuous)
                    .stroke(Color(.quaternaryLabel), lineWidth: 0.5)
        )
        }

    }
    
    var invitePerson: some View {
        Image("user2")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 36, height: 36)
            .clipShape(Circle())
            .padding(4)
            .background(.ultraThinMaterial)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(Color(.quaternaryLabel), lineWidth: 0.2)
            )
    }
    
}

struct FriendsPage_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FriendsPage()
        }
    }
}
