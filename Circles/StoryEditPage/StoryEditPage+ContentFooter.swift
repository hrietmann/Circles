//
//  StoryEditPage+ContentFooter.swift
//  Circles
//
//  Created by Hans Rietmann on 01/10/2021.
//

import SwiftUI



extension StoryEditPage {
    
    
    struct ContentFooter: View {
        var body: some View {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    CircleCapsule(emoji: "👨‍👩‍👦‍👦", color: .pink, name: "Familly", poeple: 4)
                    CircleCapsule(emoji: "🖥", color: .blue, name: "Mac lovers", poeple: 108_000)
                    
                    Button.init {
                        
                    } label: {
                        HStack(spacing: 8) {
                            Image(systemName: "plus")
                                .font(.subheadline.bold())
                                .foregroundColor(.white)
                                .padding(8)
                                .background(Color.blue)
                                .clipShape(Circle())
                            Text("Add Circle")
                                .font(.subheadline.weight(.bold))
                        }
                        .padding(.vertical, 8)
                        .padding(.horizontal, 10)
                        .padding(.trailing, 12)
                        .background(.thinMaterial)
                        .clipShape(Capsule())
                    }
                }
                .padding(.horizontal)
            }
            .frame(height: 80)
        }
    }
    
    
}


struct StoryEditPage_ContentFooter_Previews: PreviewProvider {
    static var previews: some View {
        StoryEditPage.ContentFooter()
    }
}
