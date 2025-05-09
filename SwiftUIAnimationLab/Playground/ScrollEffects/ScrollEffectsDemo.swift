//
//  ScrollEffectsDemo.swift
//  SwiftUIAnimationLab
//
//  Created by Denidu Gamage on 2025-05-09.
//

import SwiftUI

struct ScrollEffectsDemo: View {
    var body: some View {
        ScrollView {
            GeometryReader { geo in
                let offset = geo.frame(in: .global).minY
                Image(systemName: "sun.max.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .rotationEffect(.degrees(offset / 5))
                    .opacity(1 - Double(offset) / 300) // 
            }
            .frame(height: 200)

            ForEach(1..<20) { i in
                AnimatedCardView(title: "Item \(i)", background: .purple)
                    .padding(.horizontal)
            }
        }
        .navigationTitle("Scroll Effects")
    }
}



