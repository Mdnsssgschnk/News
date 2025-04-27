//
//  PlaceholderImageView.swift
//  News
//
//  Created by Виктория Мирошник on 25.04.2025.
//

import SwiftUI

struct PlaceholderImageView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .cornerRadius(10)
                .frame(height: 170)
                .foregroundStyle(.secondary.opacity(0.3))
            Image(systemName: "photo")
                .resizable()
                .scaledToFit()
                .frame(width: 150)
        }
    }
}
