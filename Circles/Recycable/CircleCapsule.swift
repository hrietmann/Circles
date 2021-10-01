//
//  CircleCapsule.swift
//  Circles
//
//  Created by Hans Rietmann on 01/10/2021.
//

import SwiftUI

struct CircleCapsule: View {
    
    let emoji: String
    let color: Color
    let name: String
    let poeple: Int
    
    var body: some View {
        Button.init {
            
        } label: {
            HStack(spacing: 12) {
                Text(emoji)
                    .padding(6)
                    .background(color.brightness(0.5))
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 0) {
                    Text(name)
                        .font(.subheadline.weight(.bold))
                    Text("\(poeple.kmFormatted) poeple")
                        .font(.caption2.weight(.medium))
                        .foregroundColor(.secondary)
                }
            }
            .padding(.vertical, 8)
            .padding(.horizontal, 8)
            .padding(.trailing, 16)
            .background(.thinMaterial)
            .clipShape(Capsule())
        }
    }
}

struct CircleCapsule_Previews: PreviewProvider {
    static var previews: some View {
        CircleCapsule(emoji: "👨‍👩‍👦‍👦", color: .pink, name: "Familly", poeple: 4)
    }
}
