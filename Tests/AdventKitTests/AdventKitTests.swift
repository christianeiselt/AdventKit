@testable import AdventKit
import XCTest

final class AdventKitTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(AdventKit().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
