//
//  NetworkError.swift
//  News
//
//  Created by Виктория Мирошник on 09.04.2025.
//

import Foundation

enum NetworkError: String, Error {
    case urlError = "Invalid URL"
    case responseError = "Error getting response"
    case decodingError = "Error during decoding"
}
