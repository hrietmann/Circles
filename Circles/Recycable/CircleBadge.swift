//
//  CircleBadge.swift
//  Circles
//
//  Created by Hans Rietmann on 30/09/2021.
//

import SwiftUI

struct CircleBadge: View {
    
    let emoji: String
    let color: Color
    let number: Int?
    
    var body: some View {
        Button {
            
        } label: {
            Text(emoji).font(.footnote)
        }
        .frame(width: 20, height: 20)
        .padding(6)
        .background(
            color.brightness(0.5)
        )
        .overlay(numberView)
        .clipShape(Circle())
        .padding(6)
        .background(Material.thinMaterial)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(Color(.quaternaryLabel), lineWidth: 0.2)
        )
        .shadow(color: .black.opacity(0.1), radius: 3, x: -1, y: 3)
    }
    
    var numberView: some View {
        Group {
            if let number = number {
                Text("+\(number)")
                    .font(.footnote)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.black.opacity(0.6))
            } else {
                EmptyView()
            }
        }
    }
}

struct CircleBadge_Previews: PreviewProvider {
    static var previews: some View {
        CircleBadge(emoji: "❤️", color: .red, number: 3)
    }
}
