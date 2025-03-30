//
//  File.swift
//  SwiftHTML
//
//  Created by Sanju on 30/03/25.
//


public struct TR: HTMLTag {
    private let tags: [HTMLTag]
    
    public init(@HTMLBuilder content: () -> [HTMLTag]) {
        self.tags = content()
    }
    
    public func render() -> String {
        "\n<tr>"
        +
        tags.map { $0.render() }.joined()
        +
        "\n</tr>"
    }
}
