//
//  NavigationBar.swift
//  Circles
//
//  Created by Hans Rietmann on 30/09/2021.
//

import SwiftUI

struct NavigationBar<Header: View, Leading: View, Trailing: View, Footer: View>: View {
    
    @Environment(\.presentationMode) var presentationMode
    let title: String?
    @ViewBuilder let header: () -> Header
    @ViewBuilder let leading: () -> Leading
    @ViewBuilder let trailing: () -> Trailing
    @ViewBuilder let footer: () -> Footer
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.backward")
                        .font(.title2.weight(.medium))
                }
                leading()
                    .font(.title2.weight(.medium))
                Spacer()
                trailing()
                    .font(.title3.weight(.medium))
            }
            .frame(height: 60)
            .background(
                Group {
                    if let title = title {
                        Text(title.capitalized)
                            .font(.title2.weight(.bold))
                    }
                }
            )
            .padding(.horizontal)
            header()
                .padding(.horizontal)
            footer()
            Divider()
        }
        .background(Color(.systemBackground))
    }
}



struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar(title: "test") {
            EmptyView()
        } leading: {
            EmptyView()
        } trailing: {
            Button {
                
            } label: {
                Image(systemName: "heart.fill")
            }
        } footer: {
            EmptyView()
        }
    }
}
