//
//  File.swift
//  SwiftHTML
//
//  Created by Sanju on 30/03/25.
//

public struct H2: HTMLTag {
    private let text: String
    
    public init(text: String) {
        self.text = text
    }
    
    public func render() -> String {
        return "\n<h2>" + text + "</h2>"
    }
}
