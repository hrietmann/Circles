//
//  CirclePage+StoryVideo.swift
//  Circles
//
//  Created by Hans Rietmann on 30/09/2021.
//

import SwiftUI


extension CirclePage {
    
    
    struct StoryVideo: View {
        var body: some View {
            VStack(alignment: .leading) {
                Rectangle()
                    .aspectRatio(16/9, contentMode: .fit)
                    .overlay(
                        Image("video")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                    .overlay(
                        Button(action: {
                            
                        }) {
                            Image(systemName: "play.fill")
                                .font(.title2)
                                .foregroundColor(.white)
                        }
                            .padding()
                            .background(.ultraThinMaterial)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(Color(.quaternaryLabel), lineWidth: 2)
                            )
                            .shadow(color: .black.opacity(0.3), radius: 16, x: 0, y: 8)
                            
                    )
                    .overlay(
                        CirclePage.StoryLike(count: 3, isLiked: false)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                            .padding(.trailing)
                            .offset(y: 16)
                    )
                
                Text("1min 16s")
                    .font(.footnote)
                    .fontWeight(.medium)
                    .foregroundColor(Color(.tertiaryLabel))
                    .padding(.leading, 12)
            }
        }
    }
    
    
}


struct CirclePage_StoryVideo_Previews: PreviewProvider {
    static var previews: some View {
        CirclePage.StoryVideo()
    }
}
