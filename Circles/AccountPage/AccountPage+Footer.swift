//
//  AccountPage+Footer.swift
//  Circles
//
//  Created by Hans Rietmann on 30/09/2021.
//

import SwiftUI



extension AccountPage {
    
    
    struct Footer: View {
        
        let currentUser: Bool
        
        var body: some View {
            Group {
                if currentUser {
                    VStack(spacing: 0) {
                        Divider()
                        
                        Button {
                            
                        } label: {
                            Text("Disconnect")
                                .font(.headline)
                                .frame(maxWidth: .infinity)
                        }
                        .tint(.red)
                        .buttonStyle(.bordered)
                        .buttonBorderShape(.roundedRectangle)
                        .controlSize(.large)
                        .padding()
                    }
                    .background(Color(.systemBackground))
                }
            }
        }
    }
    
    
}


struct AccountPage_Footer_Previews: PreviewProvider {
    static var previews: some View {
        AccountPage.Footer(currentUser: true)
    }
}
