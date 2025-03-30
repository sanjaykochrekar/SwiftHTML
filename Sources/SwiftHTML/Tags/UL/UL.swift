//
//  File.swift
//  SwiftHTML
//
//  Created by Sanju on 30/03/25.
//

public struct UL: HTMLTag {
    private let tags: [HTMLTag]
    
    public init(@HTMLBuilder content: () -> [HTMLTag]) {
        self.tags = content()
    }
    
    public func render() -> String {
        "\n<ul>"
        +
        tags.map { $0.render() }.joined()
        +
        "\n</ul>"
    }
}
