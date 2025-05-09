//
//  AnimationListView.swift
//  SwiftUIAnimationLab
//
//  Created by Denidu Gamage on 2025-05-09.
//

import SwiftUI

struct AnimationListView: View {
    let demos = AnimationDemo.samples

    var body: some View {
        List(demos) { demo in
            NavigationLink(destination: demo.view) {
                VStack(alignment: .leading) {
                    Text(demo.title)
                        .font(.headline)
                    if let subtitle = demo.subtitle {
                        Text(subtitle)
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                }
            }
        }
        .navigationTitle("SwiftUI Animations Lab")
    }
}
