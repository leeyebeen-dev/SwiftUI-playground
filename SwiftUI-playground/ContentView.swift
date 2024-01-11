//
//  ContentView.swift
//  SwiftUI-playground
//
//  Created by 이예빈 on 12/19/23.
//

import SwiftUI

// MARK: - Stepper 사용해보기
struct ContentView: View {
    @State var age = 23
    
    var body: some View {
        VStack {
            Stepper("Enter your age.", value: $age, in: 0...100)
                .padding()
                .background(Color.yellow)
                .cornerRadius(10)
                .padding()
            
            Text("Your age is \(age)")
        }
    }
}

// MARK: - Slider 사용해보기
// Slider(value: 변수, in: 시작점...끝점, step: 숫자)

/*
 @State private var celsius = 0.0
 
 var body: some View {
     VStack {
         Slider(value: $celsius, in: -100...100, step: 0.1)
             .padding()
         
         Text("\(celsius) Celsius is \(celsius * 9 / 5 + 32) Fahrenheit")
     }
 }
 */

#Preview {
    ContentView()
}
