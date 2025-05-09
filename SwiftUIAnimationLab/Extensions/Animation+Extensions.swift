//
//  Animation+Extensions.swift
//  SwiftUIAnimationLab
//
//  Created by Denidu Gamage on 2025-05-09.
//

import SwiftUI

extension Animation {
    static func elastic(duration: Double = 1.0) -> Animation {
        .interpolatingSpring(stiffness: 100, damping: 5)
            .speed(1.5)
            .delay(0.1)
    }
}
