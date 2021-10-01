//
//  FriendsPage+FriendRow.swift
//  Circles
//
//  Created by Hans Rietmann on 30/09/2021.
//

import SwiftUI



extension FriendsPage {
    
    
    struct FriendRow: View {
        
        var body: some View {
            HStack(spacing: 16) {
                HStack(spacing: 16) {
                    Image("user2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("grandma")
                            .font(.headline)
                        Text("Marry Appleseed")
                            .font(.subheadline.weight(.medium))
                            .foregroundColor(.secondary)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .overlay(
                    NavigationLink(destination: { AccountPage(currentUser: false) }, label: { Color.clear })
                )
                
                Button {
                    
                } label: {
                    Text("Remove").fontWeight(.semibold)
                }
                .tint(.red)
                .buttonStyle(.bordered)
                .buttonBorderShape(.capsule)

            }
        }
    }
    
    
}


struct FriendsPage_FriendRow_Previews: PreviewProvider {
    static var previews: some View {
        FriendsPage.FriendRow()
    }
}
