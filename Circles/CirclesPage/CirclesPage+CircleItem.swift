//
//  CirclesPage+CircleItem.swift
//  Circles
//
//  Created by Hans Rietmann on 29/09/2021.
//

import SwiftUI

extension CirclesPage {
    
    struct CircleItem: View {
        
        @State private var openCircle = false
        
        var body: some View {
            Button {
                openCircle.toggle()
            } label: {
                VStack(alignment: .leading) {
                    Color
                        .pink
                        .brightness(0.6)
                        .aspectRatio(0.8, contentMode: .fill)
                        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                    Text("👨‍👩‍👦‍👦 Familly")
                        .font(.subheadline)
                        .fontWeight(.bold)
                }
            }
            .fullScreenCover(isPresented: $openCircle) {
                CirclePage(presented: $openCircle)
            }
        }
    }
    
}

struct CirclesPage_CircleItem_Previews: PreviewProvider {
    static var previews: some View {
        CirclesPage.CircleItem()
    }
}
