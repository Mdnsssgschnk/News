
import Foundation

@MainActor
class ViewModel: ObservableObject {
    @Published var news: [Article] = []
    
    init() {
        Task {
            await fetchNews()
        }
    }
    
    func fetchNews() async {
        do {
            let fetchedNews = try await NetworkManager.shared.getNewsData()
            news = fetchedNews.articles
        }
        catch {
            if let error = error as? NetworkError {
                print(error)
            }
        }
    }
}
