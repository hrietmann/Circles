//
//  WelcomePage.swift
//  Circles
//
//  Created by Hans Rietmann on 29/09/2021.
//

import SwiftUI

struct WelcomePage: View {
    
    @Binding var presented: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome to\nCircles !")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                NavigationLink {
                    FeaturesPage(presented: $presented)
                } label: {
                    Text("Continue")
                        .font(.body)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                }
                .tint(.blue)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle)
                .controlSize(.large)
                .padding()
            }
            .navigationBarHidden(true)
        }
    }
}

struct WelcomePage_Previews: PreviewProvider {
    static var previews: some View {
        WelcomePage(presented: .constant(true))
    }
}
