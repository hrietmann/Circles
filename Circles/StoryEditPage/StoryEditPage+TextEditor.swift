//
//  StoryEditPage+TextEditor.swift
//  Circles
//
//  Created by Hans Rietmann on 01/10/2021.
//

import SwiftUI



extension StoryEditPage {
    
    
    struct TextEditor: View {
        
        @Binding var items: [StoryEditPage.Content]
        @FocusState var focusedField: Int?
        let index: Int
        @State private var text: String
        
        init(items: Binding<[StoryEditPage.Content]>, focusedField: FocusState<Int?>, index: Int) {
            self._items = items
            _text = .init(initialValue: items[index].text.wrappedValue)
            self._focusedField = focusedField
            self.index = index
        }
        
        var body: some View {
            ZStack {
                SwiftUI.TextEditor(text: $text)
                    .focused($focusedField, equals: index)
                    .frame(minHeight: 30, alignment: .leading)
                Text(items.isEmpty ? "What's up ?": text)
                    .padding(.leading, 5)
                    .padding(.vertical, 9)
                    .foregroundColor(Color(.placeholderText))
                    .opacity(text.isEmpty ? 1 : 0)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .frame(minHeight: 30, alignment: .leading)
                    .onTapGesture {
                        focusedField = index
                    }
            }
            .font(.headline)
            .onChange(of: text) { newValue in
                items[index].text = newValue
            }
        }
    }
    
    
}

struct StoryEditPage_TextEditor_Previews: PreviewProvider {
    static var previews: some View {
        StoryEditPage.TextEditor(items: .constant([.init(type: .text)]), focusedField: .init(), index: 0)
    }
}
