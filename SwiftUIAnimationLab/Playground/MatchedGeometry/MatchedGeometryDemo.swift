//
//  MatchedGeometryDemo.swift
//  SwiftUIAnimationLab
//
//  Created by Denidu Gamage on 2025-05-09.
//

import SwiftUI

struct MatchedGeometryDemo: View {
    @Namespace private var namespace
    @State private var isExpanded = false

    var body: some View {
        VStack {
            if isExpanded {
                RoundedRectangle(cornerRadius: 25)
                    .matchedGeometryEffect(id: "rect", in: namespace)
                    .frame(width: 300, height: 200)
                    .foregroundStyle(.blue)
            } else {
                RoundedRectangle(cornerRadius: 25)
                    .matchedGeometryEffect(id: "rect", in: namespace)
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.orange)
            }

            Button("Toggle") {
                withAnimation(.spring(response: 0.4, dampingFraction: 0.6)) {
                    isExpanded.toggle()
                }
            }
            .padding(.top)
        }
        .navigationTitle("Matched Geometry")
        .padding()
    }
}
