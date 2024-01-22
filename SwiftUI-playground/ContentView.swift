//
//  ContentView.swift
//  SwiftUI-playground
//
//  Created by 이예빈 on 12/19/23.
//

import SwiftUI

struct ContentView: View {
    @State private var users: [User] = []
    @State private var isLoading = false
    @State private var showingAddUserView = false

    var body: some View {
        NavigationView {
            List(users) { user in
                VStack(alignment: .leading) {
                    Text(user.name).font(.headline)
                    Text(user.email).font(.subheadline)
                    Text(user.phone).font(.subheadline)
                }
            }
            .navigationTitle("사용자 목록")
            .toolbar {
                Button(action: {
                    showingAddUserView = true
                }) {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingAddUserView) {
                UserInputView(isPresented: $showingAddUserView, users: $users)
            }
            .onAppear(perform: loadUsers)
        }
    }

    private func loadUsers() {
        isLoading = true
        NetworkManager.shared.fetchUsers { result in
            isLoading = false
            switch result {
            case .success(let fetchedUsers):
                self.users = fetchedUsers
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}


#Preview {
    ContentView()
}
