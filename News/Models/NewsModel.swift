//
//  NewsModel.swift
//  News
//
//  Created by Виктория Мирошник on 21.03.2025.
//

import Foundation

struct News: Decodable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}

// MARK: - Article
struct Article: Decodable {
    let author, description: String?
    let title: String
    let url: String
    let urlToImage: String?
    let publishedAt: Date
    let content: String?
}


