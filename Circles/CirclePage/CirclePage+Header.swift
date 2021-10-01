//
//  CirclePage+Header.swift
//  Circles
//
//  Created by Hans Rietmann on 29/09/2021.
//

import SwiftUI



extension CirclePage {
    
    
    struct Header: View {
        
        @State private var presentStoryEdit = false
        
        var body: some View {
            VStack(spacing: 0) {
                HStack(spacing: 18) {
                    VStack(alignment: .leading) {
                        Text("Familly")
                            .font(.title2)
                            .fontWeight(.black)
                        Text("6 members")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    Spacer()
                    
                    // Story creation button
                    Button {
                        presentStoryEdit.toggle()
                    } label: {
                        Image(systemName: "plus.app")
                            .foregroundColor(Color(.label))
                            .font(.title2)
                    }
                    .fullScreenCover(isPresented: $presentStoryEdit) {
                        StoryEditPage()
                    }
                    
                    // Notifications button
                    NavigationLink {
                        NotificationsPage()
                    } label: {
                        Image(systemName: "bell.badge")
                            .foregroundStyle(.red, Color(.label))
                            .font(.title2)
                    }

                    
                    // Account button
                    NavigationLink(destination: {
                        AccountPage(currentUser: true)
                    }, label: {
                        Image("user")
                            .resizable()
                            .aspectRatio(1, contentMode: .fill)
                            .clipShape(Circle())
                    })
                    .frame(width: 34, height: 34)

                }
                .padding()
                Divider()
            }
            .navigationBarHidden(true)
        }
    }
    
    
}


struct CirclePage_Header_Previews: PreviewProvider {
    static var previews: some View {
        CirclePage(presented: .constant(true))
    }
}
