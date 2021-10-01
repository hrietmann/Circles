//
//  AccountPage+Header.swift
//  Circles
//
//  Created by Hans Rietmann on 30/09/2021.
//

import SwiftUI



extension AccountPage {
    
    
    struct Header: View {
        
        let currentUser: Bool
        
        var body: some View {
            Group {
                Image(currentUser ? "user":"user2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .foregroundColor(.green)
                            .aspectRatio(1, contentMode: .fit)
                            .frame(width: 26)
                            .overlay(
                                Circle().stroke(Color(.systemBackground), lineWidth: 4)
                            )
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                            .padding(3)
                    )
                
                VStack {
                    Text(currentUser ? "Hans":"grandma")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text(currentUser ? "Hans Rietmann":"Marry Appleseed")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                if currentUser {
                    Button {
                        
                    } label: {
                        Text("Edit profile")
                            .font(.subheadline.weight(.medium))
                            .padding(4)
                    }
                    .buttonStyle(.bordered)
                    .buttonBorderShape(.capsule)
                }
                
            Button {
                
            } label: {
                VStack {
                    HStack(spacing: -20) {
                        CircleBadge(emoji: "👨‍👩‍👦‍👦", color: .pink, number: nil)
                        CircleBadge(emoji: "❤️", color: .red, number: nil)
                        CircleBadge(emoji: "🌳", color: .green, number: nil)
                        CircleBadge(emoji: "🍽", color: .orange, number: 4)
                    }
                    Text("7 circles")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color(.tertiaryLabel))

                }
            }
            }
        }
    }
    
    
}


struct AccountPage_Header_Previews: PreviewProvider {
    static var previews: some View {
        AccountPage.Header(currentUser: true)
    }
}
