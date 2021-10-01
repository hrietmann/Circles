//
//  CirclePage+StoryText.swift
//  Circles
//
//  Created by Hans Rietmann on 30/09/2021.
//

import SwiftUI



extension CirclePage {
    
    
    struct StoryText: View {
        
        let text: String
        
        var body: some View {
            VStack(alignment: .leading, spacing: -8) {
                Text(text)
                    .font(.body)
                    .fontWeight(.medium)
                
                CirclePage.StoryLike(count: 1, isLiked: true)
                    .frame(maxWidth: .infinity, alignment: .bottomTrailing)
                    .padding(.trailing)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
    
    
}



struct CirclePage_StoryText_Previews: PreviewProvider {
    static var previews: some View {
        CirclePage.StoryText(text: "Elisabeth is so cute when she is gardening with her grandmother 🥰")
    }
}
