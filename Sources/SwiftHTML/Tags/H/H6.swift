//
//  File.swift
//  SwiftHTML
//
//  Created by Sanju on 30/03/25.
//

public struct H6: HTMLTag {
    private let text: String
    
    public init(text: String) {
        self.text = text
    }
    
    public func render() -> String {
        return "\n<h6>" + text + "</h6>"
    }
}
