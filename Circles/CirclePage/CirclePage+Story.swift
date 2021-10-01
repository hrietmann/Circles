//
//  CirclePage+Feed+Post.swift
//  Circles
//
//  Created by Hans Rietmann on 29/09/2021.
//

import SwiftUI

extension CirclePage {
    
    
    struct Story: View {
        
        
        
        var body: some View {
            VStack(alignment: .leading, spacing: 16) {
                
                CirclePage.StoryHeader()
                
                CirclePage.StoryImage()
                
                CirclePage.StoryAudio()
                
                CirclePage.StoryVideo()
                
                CirclePage.StoryText(text: "Elisabeth is so cute when she is gardening with her grandmother 🥰")
                
                VStack(spacing: 16) {
                    CirclePage.StoryComment(comment: "My cousin is really adorable. With her grandmother, she will have a green thumb 🍀", last: false)
                    CirclePage.StoryComment(comment: "When are you giving us a lesson in gardening grandma?", last: true)
                    HStack(spacing: 16 + 13) {
                        Button {
                            
                        } label: {
                            Text("See 2 more comments")
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                    }
                    .padding(.leading, 16 + 30)
                }
                .padding(.top, 8)
                
                Divider()
                    .padding(.horizontal, -16)
                    .padding(.top)
            }
        }
    }
    
    
    
    
    
}

struct CirclePage_Feed_Story_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            CirclePage.Story().padding()
        }
    }
}
