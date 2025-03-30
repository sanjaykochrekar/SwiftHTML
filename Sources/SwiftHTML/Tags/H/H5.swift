//
//  File.swift
//  SwiftHTML
//
//  Created by Sanju on 30/03/25.
//

public struct H5: HTMLTag {
    private let text: String
    
    public init(text: String) {
        self.text = text
    }
    
    public func render() -> String {
        return "\n<h5>" + text + "</h5>"
    }
}
