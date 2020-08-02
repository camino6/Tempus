//
//  TimeCalculator.swift
//  Tempus
//
//  Created by Merino Fajardo García on 2/8/20.
//

import Foundation

struct TimeCalculator {
    var input = Time()
    var accumulator = Time()

    private var operation: ((Int, Int) -> Int)?

    mutating func add() {
        prepare()
        operation = {$0 + $1}
    }

    mutating func substract() {
        prepare()
        operation = {$1 - $0}
    }

    mutating func multiply() {
        prepare()
        operation = {$0 * $1}
    }

    mutating func divide() {
        prepare()
        operation = {$1 / $0}
    }

    mutating func calculate() {
        if let result = operation?(input.minutes, accumulator.minutes) {
            prepare()
            input.setMinutes(result)

            operation = nil
        }
    }

    mutating func clear() {
        accumulator = Time()
        input = Time()

        operation = nil
    }

    mutating private func prepare() {
        accumulator = input
        input = Time()
    }
}
