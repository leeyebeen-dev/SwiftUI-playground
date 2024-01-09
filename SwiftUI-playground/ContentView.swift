//
//  ContentView.swift
//  SwiftUI-playground
//
//  Created by 이예빈 on 12/19/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showing = false
    
    var body: some View {
        Button("Alert 띄우기") {
            showing = true
        }
        .alert("메시지 내용 입력", isPresented: $showing){
            Button("OK", role: .cancel){}
        }
        
    }
}

// MARK: - Alert 창의 과거
// iOS 이전 버전 지원을 위해서는 Alert(title: Text, message: Text?, dismissButton: Alert.Button?) 를 사용하여 구현함

// MARK: - Alert 창의 현재
// iOS 15부터는 alert modifier로 Alert이 대체됨


#Preview {
    ContentView()
}
