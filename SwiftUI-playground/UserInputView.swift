//
//  UserInputView.swift
//  SwiftUI-playground
//
//  Created by 이예빈 on 1/22/24.
//

import SwiftUI

// 아 이거 에러나는 이유는 User 모델에 데이터 null 처리 안해서 그럼 돌아가는건 잘 돌아감
struct UserInputView: View {
    @Binding var isPresented: Bool
    @Binding var users: [User]
    
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var phone: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("사용자 정보")) {
                    TextField("이름", text: $name)
                    TextField("이메일", text: $email)
                    TextField("전화번호", text: $phone)
                }
                Section {
                    Button("추가하기") {
                        NetworkManager.shared.createUser(name: name, email: email, phone: phone) { result in
                            switch result {
                            case .success(let newUser):
                                users.append(newUser)
                            case .failure(let error):
                                print(error.localizedDescription)
                            }
                            isPresented = false
                        }
                    }
                }
            }
            .navigationTitle("새 사용자 추가")
            .navigationBarItems(trailing: Button("취소") {
                isPresented = false
            })
        }
    }
}

