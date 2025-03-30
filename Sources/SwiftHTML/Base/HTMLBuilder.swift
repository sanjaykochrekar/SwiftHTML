//
//  HTMLBuilder.swift
//  SwiftHTML
//
//  Created by Sanju on 30/03/25.
//


@resultBuilder
public struct HTMLBuilder {
    
    public static func buildBlock() -> [HTMLTag] {
        return []
    }
    
    public static func buildBlock(_ components: HTMLTag...) -> [HTMLTag] {
        return components
    }
    
    public static func buildBlock(_ components: [HTMLTag]...) -> [HTMLTag] {
        return components.flatMap { $0 }
    }
    
    public static func buildArray(_ components: [[HTMLTag]]) -> [HTMLTag] {
        return components.flatMap { $0 }
    }
    
    public static func buildExpression(_ expression: HTMLTag) -> [HTMLTag] {
        return [expression]
    }
    
}
