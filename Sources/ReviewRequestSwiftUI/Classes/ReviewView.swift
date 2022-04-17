//
//  ReviewView.swift
//  
//
//  Copyright (c) 2022 MIYAMOTO TAISHIN
//

import SwiftUI
import StoreKit

struct ReviewView: View {
    @Binding var ShowReviewRequest: Bool
    @Binding var PushBad: Bool
    var screenSizeConstant: CGFloat {
        screenSize.width < 400 ? 40-(1000-screenSize.width)/80 : 40
    }
    var body: some View {
        HStack(spacing: 10) {

            GoodButton(ShowReviewRequest: $ShowReviewRequest, screenSizeConstant: screenSizeConstant)
            
            BadButton(PushBad: $PushBad, screenSizeConstant: screenSizeConstant)
            
        }
        .padding(.vertical, 10)
    }
}
