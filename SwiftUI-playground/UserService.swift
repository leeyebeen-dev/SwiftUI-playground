//
//  UserService.swift
//  SwiftUI-playground
//
//  Created by 이예빈 on 1/22/24.
//

import Foundation

import Moya

public enum UserService {
    case getUsers
    case createUser(name: String, email: String, phone: String)
}

extension UserService: TargetType {
    public var baseURL: URL {
        return URL(string: "https://koreanjson.com")!
    }
    
    public var path: String {
        switch self {
        case .getUsers:
            return "/users"
        case .createUser:
            return "/users"
        }
    }
    
    public var method: Moya.Method {
        switch self {
        case .getUsers:
            return .get
        case .createUser:
            return .post
            
        }
    }
    
    public var task: Task {
        switch self {
        case .getUsers:
            return .requestPlain
        case .createUser(let name, let email, let phone):
            return .requestParameters(parameters: ["name": name, "email": email, "phone": phone], encoding: JSONEncoding.default)
        }
    }
    
    public var headers: [String: String]? {
        return ["Content-type": "application/json"]
    }
    
    public var sampleData: Data {
        switch self {
        case .getUsers:
            return "{\"id\":1,\"name\":\"이정도\",\"username\":\"jd1386\",\"email\":\"lee.jungdo@gmail.com\",\"phone\":\"010-3192-2910\",\"website\":\"https://leejungdo.com\",\"province\":\"경기도\",\"city\":\"성남시\",\"district\":\"분당구\",\"street\":\"대왕판교로 160\",\"zipcode\":\"13525\",\"createdAt\":\"2019-02-24T16:17:47.000Z\",\"updatedAt\":\"2019-02-24T16:17:47.000Z\"}".data(using: .utf8)!
        case .createUser:
            return "{\"name\": \"새 사용자\",\"email\": \"newuser@example.com\",\"phone\": \"010-1234-5678\"}".data(using: .utf8)!
            
        }
    }
}
