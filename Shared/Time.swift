//
//  Time.swift
//  Tempus
//
//  Created by Merino Fajardo García on 19/07/2020.
//

import Foundation

struct Time {
    private var value: Int = 0

    private var displayHours: Int { return value / 100 }
    private var displayMinutes: Int { return value % 100 }

    var minutes: Int {
        return displayHours * 60 + displayMinutes
    }

    var display: String {
        return String(format: "%02i:%02i", displayHours, displayMinutes)
    }

    mutating func appendDigit(_ digit: Int) {
        value = value * 10 + digit
    }

    mutating func removeDigit() {
        value = value / 10
    }

    mutating func setMinutes(_ minutes: Int) {
        let h = minutes / 60
        let m = minutes % 60

        value = h * 100 + m
    }
}
