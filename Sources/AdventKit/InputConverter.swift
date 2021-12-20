//
//  InputConverter.swift
//
//
//  Created by Christian Eiselt on 20.12.21.
//

import Foundation

public struct InputConverter {
    public init() {}

    public func getLinesSplittedAs2DIntArray(input: String, separator: Character) -> [[Int]] {
        let lines = getLinesAsArray(input: input)
        var result: [[Int]] = []

        for index in 0 ..< lines.count {
            let splittedLines = lines[index]
                .split(separator: separator)
                .map { Int($0)! }
            result.append(splittedLines)
        }

        return result
    }

    public func getLinesAsArray(input: String) -> [String] {
        return input.split(separator: "\n").map { String($0) }
    }
}
