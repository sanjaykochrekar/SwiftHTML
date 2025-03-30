//
//  File.swift
//  SwiftHTML
//
//  Created by Sanju on 30/03/25.
//

public struct HTML: HTMLTag {
    private let tags: [HTMLTag]
    
    public init(@HTMLBuilder _ content: () -> [HTMLTag]) {
        self.tags = content()
    }
    
    public func render() -> String {
        "\n<html>"
        +
        tags.map { $0.render() }.joined()
        +
        "\n</html>"
    }
}
