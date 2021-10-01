//
//  JoinRequestPage.swift
//  Circles
//
//  Created by Hans Rietmann on 30/09/2021.
//

import SwiftUI

struct RequestsPage: View {
    
    let sections = ["Received", "Send"]
    @State private var section = "Received"
    
    var body: some View {
        VStack(spacing: 0) {
            NavigationBar(title: "Request") {
                EmptyView()
            } leading: {
                EmptyView()
            } trailing: {
                EmptyView()
            } footer: {
                Picker("", selection: $section.animation()) {
                    ForEach(sections, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.segmented)
                .padding(.horizontal)
                .padding(.bottom)
            }
            TabView(selection: $section) {
                RequestsPage.Received().tag(sections[0])
                RequestsPage.Sent().tag(sections[1])
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .ignoresSafeArea(edges: .bottom)
        }
        .navigationBarHidden(true)
    }
}

struct JoinRequestPage_Previews: PreviewProvider {
    static var previews: some View {
        RequestsPage()
    }
}
