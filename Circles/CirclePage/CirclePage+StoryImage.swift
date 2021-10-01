//
//  CirclePage+StoryImage.swift
//  Circles
//
//  Created by Hans Rietmann on 30/09/2021.
//

import SwiftUI


extension CirclePage {
    
    
    struct StoryImage: View {
        var body: some View {
            Image("post")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
                .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                .overlay(
                    
                        CirclePage.StoryLike(count: 4, isLiked: true)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                        .padding()
                )
        }
    }
    
    
}


struct CirclePage_StoryImage_Previews: PreviewProvider {
    static var previews: some View {
        CirclePage.StoryImage()
    }
}
