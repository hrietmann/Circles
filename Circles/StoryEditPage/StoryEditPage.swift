//
//  StoryEditPage.swift
//  Circles
//
//  Created by Hans Rietmann on 30/09/2021.
//

import SwiftUI

struct StoryEditPage: View {
    
    @State private var items = [StoryEditPage.Content(type: .text)]
    @FocusState private var focusedField: Int?
    
    var body: some View {
        StoryEditPage
            .ContentBody(items: $items, focusedField: _focusedField)
            .safeAreaInset(edge: .top) {
                StoryEditPage.Header(focusedField: _focusedField)
                    .background(Color(.systemBackground))
            }
            .safeAreaInset(edge: .bottom) {
                StoryEditPage.Footer(items: $items, focusedField: _focusedField)
                    .background(.thickMaterial)
            }
    }
}

struct StoryEditPage_Previews: PreviewProvider {
    static var previews: some View {
        StoryEditPage()
    }
}
