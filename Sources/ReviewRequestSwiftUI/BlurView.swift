//
//  BlurView.swift
//  
//
//  Copyright (c) 2022 MIYAMOTO TAISHIN
//

import SwiftUI

let screenSize = UIScreen.main.bounds

struct BlurView: UIViewRepresentable {
    var style: UIBlurEffect.Style = .systemMaterial
    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}
