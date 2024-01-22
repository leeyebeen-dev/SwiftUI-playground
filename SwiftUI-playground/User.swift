//
//  User.swift
//  SwiftUI-playground
//
//  Created by 이예빈 on 1/22/24.
//

import Foundation

struct User: Codable, Identifiable {
    let id: Int
    let name: String
    let username: String
    let email: String
    let phone: String
    let website: String
    let province: String
    let city: String
    let district: String
    let street: String
    let zipcode: String
    let createdAt: String
    let updatedAt: String
}
