//
//  CirclePage+StoryLike.swift
//  Circles
//
//  Created by Hans Rietmann on 30/09/2021.
//

import SwiftUI



extension CirclePage {
    
    
    struct StoryLike: View {
        
        let count: Int
        let isLiked: Bool
        
        var body: some View {
            Button(action: {
                
            }) {
                HStack(spacing: 5) {
                    Image(systemName: isLiked ? "heart.fill":"heart")
                        .foregroundColor(.pink)
                    Text("\(count)")
                }
                .font(.subheadline.weight(.semibold))
                .padding(5)
                .padding(.horizontal, 5)
                .background(.ultraThickMaterial)
                .clipShape(Capsule())
                .overlay(
                    Capsule()
                        .stroke(Color.secondary, lineWidth: 0.3)
                )
            }
        }
    }
    
    
}


struct CirclePage_StoryLike_Previews: PreviewProvider {
    static var previews: some View {
        CirclePage.StoryLike(count: 12, isLiked: false)
    }
}
