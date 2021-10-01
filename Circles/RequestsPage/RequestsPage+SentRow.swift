//
//  RequestsPage+SendRow.swift
//  Circles
//
//  Created by Hans Rietmann on 30/09/2021.
//

import SwiftUI

extension RequestsPage {
    
    
    struct SentRow: View {
        
        let icon = ["arrow.clockwise":Color.blue, "xmark":Color.red, "checkmark":Color.green].randomElement() ?? (key: "xmark", value: Color.red)
        
        var body: some View {
            HStack(spacing: 16) {
                HStack(spacing: 16) {
                    Button {
                        
                    } label: {
                        Text("🇨🇭").font(.title)
                    }
                    .frame(width: 36, height: 36)
                    .padding(6)
                    .background(Color.red.brightness(0.5))
                    .clipShape(Circle())
                    .padding(6)
                    .background(Material.thinMaterial)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color(.quaternaryLabel), lineWidth: 0.2)
                    )
                    .shadow(color: .black.opacity(0.1), radius: 3, x: -1, y: 3)
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Swiss Lover")
                            .font(.title3)
                            .fontWeight(.bold)
                        Text("+10k members")
                            .font(.headline.weight(.semibold))
                            .foregroundColor(.secondary)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .overlay(
                    NavigationLink(destination: { AccountPage(currentUser: false) }, label: { Color.clear })
                )
                
                Image(systemName: icon.key)
                        .font(.headline.weight(.heavy))
                        .foregroundColor(icon.value)
            }
        }
    }
    
    
}

struct RequestsPage_SendRow_Previews: PreviewProvider {
    static var previews: some View {
        RequestsPage.SentRow()
    }
}
