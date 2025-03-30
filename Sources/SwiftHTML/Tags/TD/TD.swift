//
//  File.swift
//  SwiftHTML
//
//  Created by Sanju on 30/03/25.
//

public struct TD: HTMLTag {
    private let tags: [HTMLTag]
    
    public init(@HTMLBuilder content: () -> [HTMLTag]) {
        self.tags = content()
    }
    
    public func render() -> String {
        "\n<td>"
        +
        tags.map { $0.render() }.joined()
        +
        "\n</td>"
    }
}
