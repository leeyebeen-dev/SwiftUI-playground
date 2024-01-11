//
//  ContentView.swift
//  SwiftUI-playground
//
//  Created by 이예빈 on 12/19/23.
//

import SwiftUI

// MARK: - ColorPicker 사용해보기

struct ContentView: View {
    @State var firstColor = Color.yellow
    
    var body: some View {
        VStack {
            ColorPicker("색상을 골라요!", selection: $firstColor)
                .padding()
                .background(firstColor)
                .cornerRadius(10)
                .padding()
        }
    }
}

// MARK: - Picker 사용해보기

/*
 struct ContentView: View {
     var colorName = ["Blue", "SkyBlue", "Alice", "CobaltBlue", "ClassicBlue"]
     @State var selectedColor = ""
     
     var body: some View {
         VStack {
             Picker("Choose a bluuu color", selection: $selectedColor){
                 ForEach(colorName, id: \.self) {
                     Text($0)
                 }
             }
             .pickerStyle(.inline)
             .background(Color.yellow)
             .cornerRadius(10)
             .padding()
             
             Text("you selected \(selectedColor)!")
         }
     }
 }
 */

// MARK: - DatePicker 사용해보기
/*
 struct ContentView: View {
     @State var date = Date()
     
     var body: some View {
         VStack {
             DatePicker(
                 "StartDate",
                 selection: $date,
                 displayedComponents: [.date]
             )
             .padding()
             .background(Color.yellow)
             .cornerRadius(10)
             .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
         }
     }
 }
 */

#Preview {
    ContentView()
}
