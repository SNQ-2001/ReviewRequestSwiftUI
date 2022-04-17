//
//  ReviewRequestSwiftUI.swift
//
//
//  Copyright (c) 2022 MIYAMOTO TAISHIN
//

import SwiftUI

extension View {
    public func ReviewRequest(ShowReviewRequest: Binding<Bool>, Title: String = "App Review", Header: String = "Thank you for your interest", Footer: String = "Please help us improve the user experience", Comment: String = "Thank you for your cooperation") -> some View {
        ReviewRequestModifier(ShowReviewRequest: ShowReviewRequest, Title: Title, Header: Header, Footer: Footer, Comment: Comment, parent: self)
    }
}
