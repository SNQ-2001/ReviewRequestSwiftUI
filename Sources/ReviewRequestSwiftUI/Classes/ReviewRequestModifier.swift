//
//  ReviewRequestModifier.swift
//  
//
//  Copyright (c) 2022 MIYAMOTO TAISHIN
//

import SwiftUI

struct ReviewRequestModifier<Parent: View>: View {
    @Binding var ShowReviewRequest: Bool
    @State var PushBad: Bool = false
    var Title: String
    var Header: String
    var Footer: String
    var Comment: String
    var parent: Parent
    var body: some View {
        ZStack {
            parent
            if ShowReviewRequest {
                Group {
                    BlurView(style: .systemUltraThinMaterialDark)
                        .transition(AnyTransition.opacity.animation(Animation.default.speed(1.6)))
                    VStack(spacing: 0) {
                        TitleView(ShowReviewRequest: $ShowReviewRequest, PushBad: $PushBad, Title: Title)
                        if PushBad {
                            CommentView(Comment: Comment)
                        } else {
                            HeaderView(Header: Header)
                            
                            Divider()
                            
                            ReviewView(ShowReviewRequest: $ShowReviewRequest, PushBad: $PushBad)
                            
                            Divider()
                            
                            FooterView(Footer: Footer)
                        }
                    }
                    .padding(screenSize.width < 400 ? 20-(1000-screenSize.width)/120 : 20)
                    .frame(width: screenSize.width > 375 ? 375 : screenSize.width-60)
                    .background(Color(.systemBackground).opacity(0.8))
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    .edgesIgnoringSafeArea(.all)
                }
                .transition(
                    .asymmetric(
                        insertion: AnyTransition.opacity.combined(with: .scale(scale: 1.1)).animation(Animation.default.speed(1.6)),
                        removal: .identity
                    )
                )
                .edgesIgnoringSafeArea(.all)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}
