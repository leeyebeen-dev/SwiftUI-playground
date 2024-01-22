//
//  NetworkManager.swift
//  SwiftUI-playground
//
//  Created by 이예빈 on 1/22/24.
//

import Foundation

import Moya

class NetworkManager {
    static let shared = NetworkManager()
    private let provider = MoyaProvider<UserService>()

    func fetchUsers(completion: @escaping (Result<[User], MoyaError>) -> Void) {
        provider.request(.getUsers) { result in
            switch result {
            case .success(let response):
                do {
                    let users = try JSONDecoder().decode([User].self, from: response.data)
                    completion(.success(users))
                } catch {
                    completion(.failure(MoyaError.jsonMapping(response)))
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }

    func createUser(name: String, email: String, phone: String, completion: @escaping (Result<User, MoyaError>) -> Void) {
        provider.request(.createUser(name: name, email: email, phone: phone)) { result in
            switch result {
            case .success(let response):
                do {
                    let user = try JSONDecoder().decode(User.self, from: response.data)
                    completion(.success(user))
                } catch {
                    completion(.failure(MoyaError.jsonMapping(response)))
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}

