//
//  HeaderView.swift
//  
//
//  Copyright (c) 2022 MIYAMOTO TAISHIN
//

import SwiftUI

struct HeaderView: View {
    var Header: String
    var body: some View {
        Text(Header)
            .font(.system(.caption, design: .rounded))
            .fontWeight(.regular)
            .foregroundColor(Color(.systemGray))
            .lineLimit(3)
            .frame(maxWidth:.infinity, alignment: .leading)
            .fixedSize(horizontal: false, vertical: true)
            .minimumScaleFactor(0.5)
            .padding(.bottom, 10)
    }
}
