//
//  FooterView.swift
//  
//
//  Copyright (c) 2022 MIYAMOTO TAISHIN
//

import SwiftUI

struct FooterView: View {
    var Footer: String
    var body: some View {
        Text(Footer)
            .font(.system(.caption, design: .rounded))
            .fontWeight(.regular)
            .foregroundColor(Color(.systemGray))
            .lineLimit(3)
            .frame(maxWidth:.infinity, alignment: .leading)
            .fixedSize(horizontal: false, vertical: true)
            .minimumScaleFactor(0.5)
            .padding(.top, 10)
    }
}
