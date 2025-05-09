//
//  SpringChainDemo.swift
//  SwiftUIAnimationLab
//
//  Created by Denidu Gamage on 2025-05-09.
//

import SwiftUI

struct SpringChainDemo: View {
    @State private var offset = CGSize.zero

    var body: some View {
        VStack(spacing: 20) {
            ForEach(0..<5) { i in
                Circle()
                    .fill(Color.pink)
                    .frame(width: 50, height: 50)
                    .offset(offset)
                    .animation(
                        .spring(response: 0.5 + Double(i)*0.1, dampingFraction: 0.6),
                        value: offset
                    )
            }
            Spacer()
            Button("Move") {
                offset = offset == .zero ? CGSize(width: 100, height: 100) : .zero
            }
        }
        .navigationTitle("Spring Chain")
        .padding()
    }
}
