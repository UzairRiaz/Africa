import Foundation

extension Bundle{
    func decode<T: Codable>(_ file: String) -> T {
        
        // Locate the Json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        //Create Property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        
        //Create decoder
        let decoder = JSONDecoder()
        
        //Create Property for decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        
        //return ready to use data
        
        return loaded
        
    }
}
