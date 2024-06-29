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
    // PRODUCTION BASEURL
    static let prod = APIEnvironment(baseURL: URL(string: "https://example.com.v1")!)
    // LOCAL BASEURL
    static let lcoal = APIEnvironment(baseURL: URL(string: "https://local.example.com.v1")!)
}
