import Foundation

struct PostModel: Codable, Identifiable {
    let id: Int
    let price: Double
    let title: String
    let description: String
    let image: String
    let rating:Rating
    let category:String
}
struct Rating: Codable {
    let rate:Double
    let count:Int
}
