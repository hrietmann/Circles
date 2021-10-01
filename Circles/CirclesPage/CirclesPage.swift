//
//  CirclesPage.swift
//  Circles
//
//  Created by Hans Rietmann on 29/09/2021.
//

import SwiftUI

struct CirclesPage: View {
    
    private let columns = [
        GridItem(.flexible(minimum: 0, maximum: .infinity),
                 spacing: 16, alignment: .top),
        GridItem(.flexible(minimum: 0, maximum: .infinity), alignment: .top)
    ]
    @State private var openCircle = false
    
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, alignment: .leading, spacing: 16, pinnedViews: .sectionHeaders) {
                Section {
                    ForEach((0...12), id: \.self) { _ in
                        CircleItem()
                    }
                } header: {
                    SearchBar(placeholder: "Search circles") {
                        EmptyView()
                    }
                    .padding(.bottom)
                }

            }
            .padding()
        }
        .onAppear {
            openCircle.toggle()
        }
        .fullScreenCover(isPresented: $openCircle) {
            CirclePage(presented: $openCircle)
        }
        .background(Color(.systemGroupedBackground), ignoresSafeAreaEdges: .all)
        .safeAreaInset(edge: .bottom) {
            VStack(spacing: 0) {
                Divider()
                Button {
                    
                } label: {
                    Text("New Circle")
                        .frame(maxWidth: .infinity)
                        .overlay(
                            Image(systemName: "plus.circle.fill")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(.title2)
                        )
                    .font(.body.weight(.bold))
                }
                .controlSize(.large)
                .padding()
                .background(Color(.tertiarySystemFill))
                .clipShape(Capsule())
                .padding()
            }
            .background(.thickMaterial)
        }
    }
}

struct CirclesPage_Previews: PreviewProvider {
    static var previews: some View {
        CirclesPage()
    }
}
