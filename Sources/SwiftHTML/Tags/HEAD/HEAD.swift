//
//  File.swift
//  SwiftHTML
//
//  Created by Sanju on 30/03/25.
//

public struct HEAD: HTMLTag {
    private let tags: [HTMLTag]
    
    public init(@HTMLBuilder _ content: () -> [HTMLTag]) {
        self.tags = content()
    }
    
    public func render() -> String {
        "\n<head>"
        +
        tags.map { $0.render() }.joined()
        +
        "</head>"
    }
}
