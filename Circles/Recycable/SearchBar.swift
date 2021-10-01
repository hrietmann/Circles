//
//  CirclesPage+SearchBar.swift
//  Circles
//
//  Created by Hans Rietmann on 29/09/2021.
//

import SwiftUI

struct SearchBar<Content: View>: View {
    
    let placeholder: String
    let trailing: () -> Content
    @State private var search = ""
    
    init(placeholder: String, @ViewBuilder trailing: @escaping () -> Content) {
        self.placeholder = placeholder
        self.trailing = trailing
    }
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color(.tertiaryLabel))
                .padding(.leading)
            TextField(placeholder, text: $search, prompt: nil)
                .padding(.vertical)
            trailing()
                .padding(.trailing, 8)
        }
        .font(.body.weight(.medium))
        .background(.thickMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .stroke(Color(.quaternaryLabel), lineWidth: 0.5)
        )
        .shadow(color: .black.opacity(0.1), radius: 12, x: 2, y: 10)
        .padding(.top)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(placeholder: "Search circles") {
            Button {
                
            } label: {
                Image(systemName: "line.3.horizontal.decrease.circle.fill")
                    .font(.title)
            }
            .tint(.blue)

        }
    }
}
