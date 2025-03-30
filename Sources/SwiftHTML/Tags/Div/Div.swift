//
//  File.swift
//  SwiftHTML
//
//  Created by Sanju on 30/03/25.
//

public enum Alignment: String {
    case horizontal = "row"
    case vertical = "column"
}

public struct Div: HTMLTag {
    private let tags: [HTMLTag]
    private let alignment: Alignment
    
    public init(alignment: Alignment = .horizontal, @HTMLBuilder content: () -> [HTMLTag]) {
        self.tags = content()
        self.alignment = alignment
    }
    
    public func render() -> String {
        "\n<div style=\"display: flex; flex-direction: \(alignment.rawValue);\" >"
        +
        tags.map { $0.render() }.joined()
        +
        "\n</div>"
    }
}
