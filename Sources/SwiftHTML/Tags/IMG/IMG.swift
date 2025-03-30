//
//  File.swift
//  SwiftHTML
//
//  Created by Sanju on 30/03/25.
//

public struct IMG: HTMLTag {
    private let url: String
    private let alt: String
    
    public init(url: String, alt: String = "") {
        self.url = url
        self.alt = alt
    }
    
    public func render() -> String {
        "<img src=\"\(url)\" alt=\"\(alt)\"  style=\"width:500px;height:600px;\">"
    }
}
