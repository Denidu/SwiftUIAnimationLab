//
//  PathMorphingDemo.swift
//  SwiftUIAnimationLab
//
//  Created by Denidu Gamage on 2025-05-09.
//

import SwiftUI

struct PathMorphingDemo: View {
    @State private var morph = false

    var body: some View {
        VStack {
            MorphingShape(morphAmount: morph ? 1.0 : 0.0)
                .stroke(.red, lineWidth: 4)
                .frame(width: 200, height: 200)
                .animation(.easeInOut(duration: 1.0), value: morph)

            Button("Morph") {
                morph.toggle()
            }
        }
        .navigationTitle("Path Morphing")
        .padding()
    }
}
