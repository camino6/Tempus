//
//  ButtonInput.swift
//  Tempus
//
//  Created by Merino Fajardo García on 07/07/2020.
//

import SwiftUI

enum ButtonInput {
    case zero, one, two, three, four
    case five, six, seven, eight, nine
    case plus, minus, equals, multiply, divide, clear, back

    var title: String {
        switch self {
            case .zero: return "0"
            case .one: return "1"
            case .two: return "2"
            case .three: return "3"
            case .four: return "4"
            case .five: return "5"
            case .six: return "6"
            case .seven: return "7"
            case .eight: return "8"
            case .nine: return "9"
            case .plus: return "plus"
            case .minus: return "minus"
            case .equals: return "equal"
            case .multiply: return "multiply"
            case .divide: return "divide"
            case .clear: return "trash"
            case .back: return "delete.left"
        }
    }

    var value: Int? {
        switch self {
            case .zero: return 0
            case .one: return 1
            case .two: return 2
            case .three: return 3
            case .four: return 4
            case .five: return 5
            case .six: return 6
            case .seven: return 7
            case .eight: return 8
            case .nine: return 9
            default: return nil
        }
    }

    var backgroundColor: Color {
        switch self {
            case .equals, .plus, .minus, .divide, .multiply, .clear, .back:
                return Color.orange
            default:
                return Color.blue
        }
    }

    var isNumber: Bool {
        switch self {
            case .equals, .plus, .minus, .divide, .multiply, .clear, .back:
                return false
            default:
                return true
        }
    }

}
