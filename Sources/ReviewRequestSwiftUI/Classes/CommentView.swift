//
//  CommentView.swift
//  
//
//  Copyright (c) 2022 MIYAMOTO TAISHIN
//

import SwiftUI

struct CommentView: View {
    var Comment: String
    var body: some View {
        Text(Comment)
            .font(.system(.caption, design: .rounded))
            .fontWeight(.regular)
            .foregroundColor(Color(.systemGray))
            .frame(maxWidth:.infinity, alignment: .leading)
            .fixedSize(horizontal: false, vertical: true)
            .minimumScaleFactor(0.5)
            .padding(.top, 10)
            .padding(.bottom, 10)
    }
}
