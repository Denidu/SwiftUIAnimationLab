//
//  MorphingShape.swift
//  SwiftUIAnimationLab
//
//  Created by Denidu Gamage on 2025-05-09.
//

import SwiftUI

struct MorphingShape: Shape {
    var morphAmount: Double // Use a Double instead of Bool

    var animatableData: Double {
        get { morphAmount }
        set { morphAmount = newValue }
    }

    func path(in rect: CGRect) -> Path {
        var path = Path()

        // Interpolate between ellipse (0.0) and diamond (1.0)
        if morphAmount > 0.5 {
            path.move(to: CGPoint(x: rect.midX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
            path.closeSubpath()
        } else {
            path.addEllipse(in: rect)
        }

        return path
    }
}

