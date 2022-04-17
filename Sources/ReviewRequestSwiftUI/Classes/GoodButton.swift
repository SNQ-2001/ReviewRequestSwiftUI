//
//  GoodButton.swift
//  
//
//  Copyright (c) 2022 MIYAMOTO TAISHIN
//

import SwiftUI
import StoreKit

struct GoodButton: View {
    @Binding var ShowReviewRequest: Bool
    @Environment(\.colorScheme) private var colorScheme: ColorScheme
    var screenSizeConstant: CGFloat
    var body: some View {
        HStack(spacing: 0) {
            SVGView(name: colorScheme == .dark ? "thumbs-up-white" : "thumbs-up-black")
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.black)
                .font(.system(size: screenSizeConstant))
                .frame(width: screenSizeConstant)
                .padding(.horizontal, 5)
                .padding(.leading, 5)
            VStack(alignment: .leading) {
                Text("Good")
                    .font(.system(size: screenSizeConstant*0.9))
                    .fontWeight(.medium)
                    .lineLimit(1)
                    .layoutPriority(1)
            }
            .padding(.horizontal, 3)
            Spacer()
        }
        .fixedSize(horizontal: false, vertical: true)
        .padding(.vertical, 10)
        .padding(.horizontal, 0)
        .background(Color.gray.opacity(0.4))
        .cornerRadius(10)
        .onTapGesture(perform: {
            withAnimation {
                ShowReviewRequest = false
            }
            if let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                SKStoreReviewController.requestReview(in: scene)
            }
        })
    }
}
