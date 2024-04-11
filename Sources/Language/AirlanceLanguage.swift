// The Swift Programming Language
// https://docs.swift.org/swift-book

public struct Language {
    public let id: String
    public let original: String
    public let name: String
    
    public init(id: String, original: String, name: String) {
        self.id = id
        self.original = original
        self.name = name
    }
}
