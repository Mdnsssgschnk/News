//
//  ContentView.swift
//  News
//
//  Created by Виктория Мирошник on 20.03.2025.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm = ViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                Text("TOP NEWS")
                    .font(.title)
                    .fontWeight(.heavy)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                VStack {
                    ForEach(vm.news, id:  \.url) { article in
                        if let articleURL = URL(string: article.url) {
                            Link(destination: articleURL) {
                                TopNewsView(article: article)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
            }
            .padding()
            .background(.secondary.opacity(0.3))
        }

    }
}

#Preview {
    ContentView()
}


