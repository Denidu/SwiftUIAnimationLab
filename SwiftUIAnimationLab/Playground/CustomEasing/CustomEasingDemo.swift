//
//  CustomEasingDemo.swift
//  SwiftUIAnimationLab
//
//  Created by Denidu Gamage on 2025-05-09.
//

import SwiftUI

struct CustomEasingDemo: View {
    @State private var toggle = false

    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.green)
                .frame(width: 60, height: 60)
                .offset(x: toggle ? 120 : -120)
                .animation(
                    .timingCurve(0.68, -0.6, 0.32, 1.6, duration: 1.2),
                    value: toggle
                )

            Button("Animate") {
                toggle.toggle()
            }
        }
        .navigationTitle("Custom Easing")
        .padding()
    }
}
