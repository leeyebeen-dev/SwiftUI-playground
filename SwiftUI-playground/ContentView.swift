//
//  ContentView.swift
//  SwiftUI-playground
//
//  Created by 이예빈 on 12/19/23.
//

import SwiftUI


struct ContentView: View {
    
    @State var showGreeting: Bool = false
    
    var body: some View {
        Toggle("토글 버튼", isOn: $showGreeting)
            .padding()
            .background(Color.blue)
            .foregroundColor(Color.white)
            .cornerRadius(10)
            .padding()
        
        if showGreeting {
            Text("Hi!")
        }
    }
}

// MARK: - 기본 버튼 생성하기
/*
 Button("버튼"){
     // 실행할 코드
 }
 */

/*
 Button {
     // 실행할 코드
 } label: {
     Image(systemName: "circle.fill")
         .foregroundColor(.blue)
 }
 */

// 실행해보기
/*
 @State var showDetails = false
 
 var body: some View {
     VStack {
         Button {
             showDetails.toggle()
         } label: {
             Text("Show Details")
         }
         
         if showDetails {
             Text("Detail Checked.")
                 .padding()
         }
     }
 }
 */

// MARK: - EditButton
/*
 NavigationView {
     Text("Example")
         .navigationTitle("Buttons")
         .toolbar {
             EditButton()
         }
 }
 */

// MARK: - 링크 버튼
// Link("My Blog", destination: URL(string: "https://yecong-it.tistory.com/")!)


// MARK: - 메뉴 버튼
/*
 Menu("Copy"){
     Button("Copy Normal"){
         print("Normal")
     }
     Button("Copy Formatted"){
         print("Formatted")
     }
 }
 */

// MARK: - 네비게이션 버튼
/*
 struct DetailView: View {
     var body: some View {
         Text("Detail View")
     }
 }
 
 NavigationView {
     NavigationLink(destination: DetailView()){
         Image(systemName: "right.circle.fill")
             .resizable()
             .frame(width: 100, height: 100)
     }.navigationTitle("Buton Click")
 }
 */

// MARK: - 토글 버튼
/*
 @State var showGreeting: Bool = false
 
 var body: some View {
     Toggle("토글 버튼", isOn: $showGreeting)
         .padding()
         .background(Color.blue)
         .foregroundColor(Color.white)
         .cornerRadius(10)
         .padding()
     
     if showGreeting {
         Text("Hi!")
     }
 }
 */

#Preview {
    ContentView()
}
