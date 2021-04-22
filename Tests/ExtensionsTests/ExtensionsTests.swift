import XCTest
@testable import Extensions

final class ExtensionsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertTrue(between(min: 0, value: 10, max: 5) == 5)
        XCTAssertTrue(between(min: 0, value: 10, max: 5) == 5)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
