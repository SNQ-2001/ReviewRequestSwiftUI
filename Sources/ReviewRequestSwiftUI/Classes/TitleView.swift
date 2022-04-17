//
//  TitleView.swift
//  
//
//  Copyright (c) 2022 MIYAMOTO TAISHIN
//

import SwiftUI

struct TitleView: View {
    @Binding var ShowReviewRequest: Bool
    @Binding var PushBad: Bool
    var Title: String
    var body: some View {
        Text("REVIEW REQUEST")
            .font(.footnote)
            .fontWeight(.semibold)
            .foregroundColor(Color(.systemGray2))
            .frame(maxWidth:.infinity, alignment: .leading)
            .padding(.vertical, -5)
            .padding(.bottom, 8)
        HStack {
            Text(Title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.bold)
                .lineLimit(1)
                .minimumScaleFactor(0.85)
                .allowsTightening(true)
                .layoutPriority(1)
            Spacer()
            Button(action: {
                if PushBad {
                    ShowReviewRequest = false
                    PushBad = false
                } else {
                    let generator = UINotificationFeedbackGenerator()
                    generator.notificationOccurred(.error)
                }
            }) {
                Circle()
                    .fill(Color(.systemGray4))
                    .frame(width: screenSize.width < 400 ? 40-(1000-screenSize.width)/80 : 40, height: screenSize.width < 400 ? 40-(1000-screenSize.width)/80 : 40)
                    .overlay(
                        Image(systemName: "xmark")
                            .font(.system(size: 18, weight: .bold, design: .rounded))
                            .minimumScaleFactor(0.2)
                            .foregroundColor(Color(.systemGray))
                            .padding(4)
                    )
            }
            .layoutPriority(-1)
        }
        .padding(.bottom, 3)
    }
}
