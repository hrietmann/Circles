//
//  FeaturesPage.swift
//  Circles
//
//  Created by Hans Rietmann on 29/09/2021.
//

import SwiftUI

struct FeaturesPage: View {
    
    @Binding var presented: Bool
    
    var body: some View {
        VStack {
            Text("New Features")
                .font(.largeTitle)
                .fontWeight(.black)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            Button {
                presented.toggle()
            } label: {
                Text("Done")
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

struct FeaturesPage_Previews: PreviewProvider {
    static var previews: some View {
        FeaturesPage(presented: .constant(true))
    }
}
