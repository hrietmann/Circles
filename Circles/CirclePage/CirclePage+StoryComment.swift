//
//  CirclePage+FeedPostComment.swift
//  Circles
//
//  Created by Hans Rietmann on 29/09/2021.
//

import SwiftUI


extension CirclePage {
    
    
    struct StoryComment: View {
        
        let comment: String
        let last: Bool
        
        var body: some View {
            HStack(alignment: .top, spacing: 0) {
                NavigationLink {
                    AccountPage(currentUser: true)
                } label: {
                    Image("user")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                        .padding(.trailing)
                }

                
                Text("hans ")
                    .font(.subheadline)
                    .foregroundColor(.blue)
                    .fontWeight(.heavy) +
                Text(comment)
                    .font(.subheadline)
                    .fontWeight(.medium)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(
                Rectangle()
                    .foregroundColor(Color(.tertiarySystemFill))
                    .frame(width: 3)
                    .frame(maxHeight: last ? 23 : .infinity)
                    .offset(y: last ? -16:0)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .padding(.leading, 13)
                    .padding(.top, -16)
            )
        }
        
    }
    
    
}

struct CirclePage_FeedPostComment_Previews: PreviewProvider {
    static var previews: some View {
        CirclePage.StoryComment(comment: "Comment details", last: true)
            .padding()
    }
}
