//
//  CirclePage+StoryAudio.swift
//  Circles
//
//  Created by Hans Rietmann on 30/09/2021.
//

import SwiftUI


extension CirclePage {
    
    
    struct StoryAudio: View {
        var body: some View {
            VStack(alignment: .leading) {
                HStack(spacing: 0) {
                    Button(action: {
                        
                    }) {
                        Image(systemName: "play.circle.fill")
                            .font(.title.weight(.bold))
                            .foregroundColor(.white)
                    }
                        .padding(6)
                    HStack(spacing: 2) {
                        ForEach((0...60), id: \.self) { i in
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(width: 2, height: CGFloat((8...28).randomElement() ?? 28))
                        }
                    }
                    .padding(.trailing, 16)
                }
                .background(.blue)
            .clipShape(Capsule())
            .overlay(
                
                    CirclePage.StoryLike(count: 1, isLiked: false)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                    .padding(.trailing)
                    .offset(y: 16)
            )
                
                Text("2min 3s")
                    .font(.footnote)
                    .fontWeight(.medium)
                    .foregroundColor(Color(.tertiaryLabel))
                    .padding(.leading, 16 + 8)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
    
    
}


struct CirclePage_StoryAudio_Previews: PreviewProvider {
    static var previews: some View {
        CirclePage.StoryAudio()
    }
}
