import Foundation

struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
