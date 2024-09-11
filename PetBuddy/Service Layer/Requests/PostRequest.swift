//
//  PostRequest.swift
//  PetBuddy
//
//  Created by Mohamed Atallah on 13/06/2024.
//

import Foundation

struct PostRequest: APIRequest {
    
    typealias Response = [Post]
    
    var method: HTTPMethod { return .GET }
    var path: String { return "/posts" }
    var body: Data? { return nil }
    
    func handle(response: Data) throws -> [Post] {
      let decoder = JSONDecoder()
      decoder.dateDecodingStrategy = .iso8601
      return try decoder.decode(Response.self, from: response)
    }
    
}
