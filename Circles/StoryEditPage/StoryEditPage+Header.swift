//
//  StoryEditPage+Header.swift
//  Circles
//
//  Created by Hans Rietmann on 01/10/2021.
//

import SwiftUI



extension StoryEditPage {
    
    
    struct Header: View {
        
        @Environment(\.presentationMode) var presentation
        @FocusState var focusedField: Int?
        
        var body: some View {
            VStack(spacing: 0) {
                HStack {
                    Button {
                        presentation.wrappedValue.dismiss()
                    } label: {
                        Text("Annuler")
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Label("Post", systemImage: "paperplane.fill")
                            .font(.headline)
                    }
                    .tint(.blue)
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.capsule)
                    .controlSize(.regular)
                    
                }
                .padding()
                .background(
                    Image("user")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                )
                Divider()
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    self.focusedField = 0
                }
        }
        }
    }
    
    
}


struct StoryEditPage_Header_Previews: PreviewProvider {
    static var previews: some View {
        StoryEditPage.Header(focusedField: .init())
    }
}
