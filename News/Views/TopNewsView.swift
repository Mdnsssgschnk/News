//
//  TopNewsView.swift
//  News
//
//  Created by Виктория Мирошник on 25.04.2025.
//

import SwiftUI

struct TopNewsView: View {
    let article: Article
    
    var body: some View {
        VStack {
            if let url = article.urlToImage, let imgURL = URL(string: url) {
                AsyncImage(url: imgURL) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .cornerRadius(10)
                            .frame(height: 170)
                            .scaledToFit()
                    } else {
                        PlaceholderImageView()
                    }
                }
            } else {
                PlaceholderImageView()
            }
            
            VStack(alignment: .leading) {
                Text(article.title)
                    .font(.title2)
                    .fontWeight(.regular)
                Spacer()
                Text(article.publishedAt.formatted())
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)

            
        }
        .frame(height: 300)
        .frame(maxWidth: .infinity)
        .padding()
        .background(.background)
        .cornerRadius(10)
    }
}


