//
//  RequestsPage+Sent.swift
//  Circles
//
//  Created by Hans Rietmann on 30/09/2021.
//

import SwiftUI


extension RequestsPage {
    
    
    struct Sent: View {
        var body: some View {
            ScrollView(showsIndicators: false) {
                LazyVStack(spacing: 16) {
                    ForEach((0...10), id: \.self) { _ in
                        RequestsPage.SentRow()
                    }
                }
                .padding()
            }
        }
    }
    
    
}

struct RequestsPage_Sent_Previews: PreviewProvider {
    static var previews: some View {
        RequestsPage.Sent()
    }
}
