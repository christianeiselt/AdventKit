@testable import AdventKit
import XCTest

final class InputConverterTests: XCTestCase {
    func testGetLinesSplittedAs2DIntArray() throws {
        XCTAssertEqual(InputConverter().getLinesSplittedAs2DIntArray(input: "2x3x4\n3x4x5", separator: "x"), [[2, 3, 4], [3, 4, 5]])
    }

    func testGetLinesAsArray() throws {
        XCTAssertEqual(InputConverter().getLinesAsArray(input: "2x3x4\n3x4x5"), ["2x3x4", "3x4x5"])
    }
}
