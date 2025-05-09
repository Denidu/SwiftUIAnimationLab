//
//  AnimationDemo.swift
//  SwiftUIAnimationLab
//
//  Created by Denidu Gamage on 2025-05-09.
//

import SwiftUI

struct AnimationDemo: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String?
    let view: AnyView

    static let samples: [AnimationDemo] = [
        AnimationDemo(title: "Matched Geometry", subtitle: "Smooth transitions between views", view: AnyView(MatchedGeometryDemo())),
        AnimationDemo(title: "Spring Chain", subtitle: "Sequential movement with delay", view: AnyView(SpringChainDemo())),
        AnimationDemo(title: "Custom Easing", subtitle: "Bezier curve control", view: AnyView(CustomEasingDemo())),
        AnimationDemo(title: "Scroll Effects", subtitle: "React to scroll offset", view: AnyView(ScrollEffectsDemo())),
        AnimationDemo(title: "Path Morphing", subtitle: "Shape transitions", view: AnyView(PathMorphingDemo()))
    ]
}
