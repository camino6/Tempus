//
//  ButtonView.swift
//  Tempus
//
//  Created by Merino Fajardo García on 08/07/2020.
//

import SwiftUI

struct ButtonView: View {
    let buttonInput: ButtonInput
    @Binding var calculator: TimeCalculator

    private let spacingSize: CGFloat = 25

    #if os(iOS)
    private let deviceWidth: CGFloat = UIScreen.main.bounds.size.width
    #elseif os(macOS)
    private let deviceWidth: CGFloat = 300
    #endif

    var height: CGFloat {
        return (deviceWidth - 5 * spacingSize) / 4
    }

    var width: CGFloat {
        switch buttonInput {
            case .zero, .equals:
                return (deviceWidth - 3 * spacingSize) / 2
            case .clear, .back:
                return (deviceWidth - 3 * spacingSize) / 3
            default:
                return height
        }
    }

    var body: some View {
        Button(action: {
            switch buttonInput {
                case .plus:
                    calculator.add()
                case .minus:
                    calculator.substract()
                case .multiply:
                    calculator.multiply()
                case .divide:
                    calculator.divide()
                case .back:
                    calculator.input.removeDigit()
                case .equals:
                    calculator.calculate()
                case .clear:
                    calculator.clear()
                default:
                    calculator.input.appendDigit(buttonInput.value!)
            }
        }, label: {
            if buttonInput.isNumber {
                Text(buttonInput.title)
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(width: width, height: height, alignment: .center)
                    .foregroundColor(.white)
                    .background(buttonInput.backgroundColor)
                    .cornerRadius(height / 4)
                    .shadow(color: buttonInput.backgroundColor.opacity(0.4), radius: 10, x: 0, y: 10)

            }
            else {
                Image(systemName: buttonInput.title)
                    .font(.title)
                    .frame(width: width, height: height, alignment: .center)
                    .foregroundColor(.white)
                    .background(buttonInput.backgroundColor)
                    .cornerRadius(height / 4)
                    .shadow(color: buttonInput.backgroundColor.opacity(0.4), radius: 10, x: 0, y: 10)
            }
        }).buttonStyle(PlainButtonStyle())
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(buttonInput: .zero, calculator: Binding.constant(TimeCalculator()))
    }
}
