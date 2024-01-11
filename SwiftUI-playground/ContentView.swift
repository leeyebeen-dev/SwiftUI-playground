//
//  ContentView.swift
//  SwiftUI-playground
//
//  Created by 이예빈 on 12/19/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var text: String = ""
    
    var body: some View {
        VStack {
            // TextEditor 사용해보기
            TextEditor(text: $text)
                .cornerRadius(10)
                .padding()
                .background(Color.blue)
        }
    }
}

// MARK: - TextField로부터 Text값 불러오기
// TextField("placeholder", text: $변수명)

/*
 @State var name: String = ""
 
 var body: some View {
     VStack {
         TextField("Enter your name", text: $name)
             .padding()
             .background(Color.blue)
             .foregroundColor(Color.white)
         
         Divider()
         
         Text("Hi, \(name)!")
     }
     .padding()
 }
 */

// MARK: - TextField 스타일 변경하기
// .textFieldStyle(.roundedBorder)

// MARK: - Secure TextField 사용하기
/*
 SecureField("비밀번호 8자리를 입력하세요.", text: $password)
     .padding()
     .background(Color.blue)
     .textFieldStyle(.roundedBorder)
 */


#Preview {
    ContentView()
}
