//
//  PostRequest.swift
//  PetBuddy
//
//  Created by Mohamed Atallah on 13/06/2024.
//

import Foundation

struct PostRequest: APIRequest {
    typealias Response = [Post]
    var path: String { return "posts" }
}
