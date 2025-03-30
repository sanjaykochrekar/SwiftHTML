//
//  OL.swift
//  SwiftHTML
//
//  Created by Sanju on 30/03/25.
//

public struct OL: HTMLTag {
    private let tags: [HTMLTag]
    
    public init(@HTMLBuilder content: () -> [HTMLTag]) {
        self.tags = content()
    }
    
    public func render() -> String {
        "\n<ol>"
        +
        tags.map { $0.render() }.joined()
        +
        "\n</ol>"
    }
}
