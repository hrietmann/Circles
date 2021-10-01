//
//  StoryEditPage+Body.swift
//  Circles
//
//  Created by Hans Rietmann on 01/10/2021.
//

import SwiftUI



extension StoryEditPage {
    
    
    struct ContentBody: View {
        
        @Binding var items: [StoryEditPage.Content]
        @FocusState var focusedField: Int?
        
        var body: some View {
            ScrollView(showsIndicators: false) {
                LazyVGrid(columns: [.init(.flexible(minimum: 0, maximum: .infinity), spacing: 0, alignment: .leading)], alignment: .leading, spacing: 0, pinnedViews: .sectionFooters) {
                    ScrollViewReader { value in
                        Section {
                            ForEach(items) { item in
                                switch item.type {
                                case .text:
                                    StoryEditPage
                                        .TextEditor(items: $items,
                                                    focusedField: _focusedField,
                                                    index: index(item))
                                        .id(index(item))
                                case .images:
                                    CirclePage.StoryImage()
                                        .id(index(item))
                                case .audio:
                                    CirclePage.StoryAudio()
                                        .id(index(item))
                                case .video:
                                    CirclePage.StoryVideo()
                                        .id(index(item))
                                }
                            }
                            .padding()
                        }
                        .onChange(of: items) { newValue in
                            withAnimation {
                                value.scrollTo(newValue.count - 1, anchor: .bottom)
                            }
                        }
                    }

                }
            }
            .safeAreaInset(edge: .bottom) {
                StoryEditPage.ContentFooter()
            }
        }
        
        
        private func index(_ item: Content) -> Int {
            items.firstIndex(of: item)!
        }
    }
    
    
}


struct StoryEditPage_ContentBody_Previews: PreviewProvider {
    static var previews: some View {
        StoryEditPage()
    }
}
