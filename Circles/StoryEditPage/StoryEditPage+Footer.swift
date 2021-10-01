//
//  StoryEditPage+Footer.swift
//  Circles
//
//  Created by Hans Rietmann on 01/10/2021.
//

import SwiftUI



extension StoryEditPage {
    
    
    struct Footer: View {
        
        @Binding var items: [StoryEditPage.Content]
        @FocusState var focusedField: Int?
        
        var body: some View {
            VStack(alignment: .leading, spacing: 0) {
                
                Divider()
                
                HStack(spacing: 0) {
                    
                    Button {
                        add(.init(type: .text))
                    } label: {
                        Image(systemName: "text.alignleft")
                    }
                    .disabled(focusedField != nil)
                    .foregroundColor(focusedField != nil ? .secondary : .blue)
                    .padding(8)
                    Spacer()
                    
                    Menu {
                        Button {
                            add(.init(type: .images))
                        } label: {
                            Label("Shoot", systemImage: "camera.shutter.button")
                        }
                        Button {
                            add(.init(type: .images))
                        } label: {
                            Label("Photo Library", systemImage: "photo.on.rectangle")
                        }
                        Button {
                            add(.init(type: .images))
                        } label: {
                            Label("Files", systemImage: "folder")
                        }
                    } label: {
                        Image(systemName: "photo.on.rectangle.angled")
                    }
                    .padding(8)
                    Spacer()
                    
                    Button {
                        add(.init(type: .images))
                    } label: {
                        Image(systemName: "camera")
                    }
                    .padding(8)
                    Spacer()
                    
                    Menu {
                        Button {
                            add(.init(type: .video))
                        } label: {
                            Label("Record", systemImage: "circle.inset.filled")
                        }
                        Button {
                            add(.init(type: .video))
                        } label: {
                            Label("Video Library", systemImage: "photo.on.rectangle")
                        }
                        Button {
                            add(.init(type: .video))
                        } label: {
                            Label("Files", systemImage: "folder")
                        }
                    } label: {
                        Image(systemName: "film")
                    }
                    .padding(8)
                    Spacer()
                    
                    Menu {
                        Button {
                            add(.init(type: .audio))
                        } label: {
                            Label("Record", systemImage: "mic")
                        }
                        Button {
                            add(.init(type: .audio))
                        } label: {
                            Label("Files", systemImage: "folder")
                        }
                    } label: {
                        Image(systemName: "waveform")
                    }
                    .padding(8)
                }
                .padding(.horizontal)
                .frame(height: 60)
                .font(.title2)
                .foregroundColor(.blue)
            }
        }
        
        private func add(_ item: Content) {
            if let last = items.last, last.type.isText, last.text.isEmpty {
                items.removeLast()
            }
            items.append(item)
            focusedField = items.count - 1
        }
    }
    
    
}

struct StoryEditPage_Footer_Previews: PreviewProvider {
    static var previews: some View {
        StoryEditPage.Footer(items: .constant([.init(type: .text)]), focusedField: .init())
    }
}
