//
//  ContentView.swift
//  Shared
//
//  Created by Merino Fajardo García on 07/07/2020.
//

import SwiftUI

struct ContentView: View {
    @State var calculator = TimeCalculator()
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 20) {
            Spacer()

            Text(calculator.accumulator.display)
                .font(.system(size: 24))
                .foregroundColor(Color.gray)
                .animation(.spring())

            Text(calculator.input.display)
                .font(.system(size: 70))
                .padding(.bottom, 50)
                .animation(.spring())

            HStack {
                ButtonView(buttonInput: .clear, calculator: $calculator)
                Spacer()
                ButtonView(buttonInput: .back, calculator: $calculator)
                Spacer()
                ButtonView(buttonInput: .divide, calculator: $calculator)
            }
            HStack {
                ButtonView(buttonInput: .seven, calculator: $calculator)
                Spacer()
                ButtonView(buttonInput: .eight, calculator: $calculator)
                Spacer()
                ButtonView(buttonInput: .nine, calculator: $calculator)
                Spacer()
                ButtonView(buttonInput: .multiply, calculator: $calculator)
            }
            HStack {
                ButtonView(buttonInput: .four, calculator: $calculator)
                Spacer()
                ButtonView(buttonInput: .five, calculator: $calculator)
                Spacer()
                ButtonView(buttonInput: .six, calculator: $calculator)
                Spacer()
                ButtonView(buttonInput: .minus, calculator: $calculator)
            }
            HStack {
                ButtonView(buttonInput: .one, calculator: $calculator)
                Spacer()
                ButtonView(buttonInput: .two, calculator: $calculator)
                Spacer()
                ButtonView(buttonInput: .three, calculator: $calculator)
                Spacer()
                ButtonView(buttonInput: .plus, calculator: $calculator)
            }
            HStack {
                ButtonView(buttonInput: .zero, calculator: $calculator)
                Spacer()
                ButtonView(buttonInput: .equals, calculator: $calculator)
            }
        }.padding(.all, 32)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
