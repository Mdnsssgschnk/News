//
//  NetworkManager.swift
//  News
//
//  Created by Виктория Мирошник on 21.03.2025.
//

import Foundation

class NetworkManager {
    static let shared: NetworkManager = NetworkManager()
    private let urlNews = "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=76f70482fa754526ab927da7943f2e2d"
    private let decoder = JSONDecoder()
    
    private init() {
        decoder.dateDecodingStrategy = .iso8601
    }
    
    func getNewsData() async throws -> News {
        guard let url = URL(string: urlNews) else { throw NetworkError.urlError }
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { throw NetworkError.responseError }
        guard let news = try? decoder.decode(News.self, from: data) else { throw NetworkError.decodingError }
        return news
    }
}


