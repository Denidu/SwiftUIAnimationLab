//
//  AnimatedCardView.swift
//  SwiftUIAnimationLab
//
//  Created by Denidu Gamage on 2025-05-09.
//

import SwiftUI

struct AnimatedCardView: View {
    let title: String
    let background: Color

    var body: some View {
        Text(title)
            .font(.title3)
            .bold()
            .padding()
            .frame(maxWidth: .infinity)
            .background(background)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .shadow(radius: 4)
    }
}
