//
//  ContentView.swift
//  SwiftUI-playground
//
//  Created by 이예빈 on 12/19/23.
//

import SwiftUI

struct ContentView: View {
    @State var showingSheet = false
    
    var body: some View {
        Button("Action Sheet 사용하기"){
            showingSheet = true
        }
        .confirmationDialog("타이틀", isPresented: $showingSheet){
            Button("제거", role: .destructive) {}
            Button("취소", role: .cancel) {}
        }
    }
}

// MARK: - ActionSheet의 과거
// ActionSheet(title: Text, message: Text?, buttons: [ActionSheet.Button])

// MARK: - ActionSheet의 현재
// View 프로토콜의 modifier인 confirmationDialog(...)을 사용해서 ActionSheet을 대체할 수 있음

#Preview {
    ContentView()
}
