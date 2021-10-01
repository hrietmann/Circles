//
//  RequestsPage+Row.swift
//  Circles
//
//  Created by Hans Rietmann on 30/09/2021.
//

import SwiftUI


extension RequestsPage {
    
    
    struct ReceivedRow: View {
        var body: some View {
            HStack(spacing: 16) {
                HStack(spacing: 16) {
                    Image("user2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("grandma")
                            .font(.headline)
                        Text("Marry Appleseed")
                            .font(.subheadline.weight(.medium))
                            .foregroundColor(.secondary)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .overlay(
                    NavigationLink(destination: { AccountPage(currentUser: false) }, label: { Color.clear })
                )
                
                HStack(spacing: 6) {
                    Button {
                        
                    } label: {
                        Image(systemName: "xmark")
                            .font(.subheadline.weight(.heavy))
                            .padding(4)
                    }
                    .tint(.red)
                    .buttonStyle(.bordered)
                    .clipShape(Circle())
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "checkmark")
                            .font(.subheadline.weight(.heavy))
                            .padding(4)
                    }
                    .tint(.green)
                    .buttonStyle(.bordered)
                    .clipShape(Circle())
                }
            }
        }
    }
    
    
}


struct RequestsPage_Row_Previews: PreviewProvider {
    static var previews: some View {
        RequestsPage.ReceivedRow()
    }
}
