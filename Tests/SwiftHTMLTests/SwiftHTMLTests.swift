import Testing
@testable import SwiftHTML

@Test func example() async throws {
    // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    
    let string: String = Div {
        H1(text: "abcd")
        H1(text: "abcd")
        H1(text: "abcd")
        H1(text: "abcd")
        H1(text: "abcd")
        H1(text: "abcd")
    }
    
    #expect(string)
}
