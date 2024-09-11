//
//  APIEnvironment.swift
//  PetBuddy
//
//  Created by Mohamed Atallah on 13/06/2024.
//

import Foundation

struct APIEnvironment {
    let baseURL: URL
}

extension APIEnvironment {
    static let prod = APIEnvironment(baseURL: URL(string: "https://example.com/api/v1")!)
    static let local = APIEnvironment(baseURL: URL(string: "http://localhost:8080/api/v1")!)
    static let local81 = APIEnvironment(baseURL: URL(string: "http://localhost:8081/api/v1")!)
}
