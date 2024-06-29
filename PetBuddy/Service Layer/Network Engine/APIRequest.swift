//
//  APIRequest.swift
//  PetBuddy
//
//  Created by Mohamed Atallah on 13/06/2024.
//

import Foundation

enum RequestError: Error {
    case CanNotHandleTheDataInProperWay
}

enum HTTPMethod: String {
    case GET
    case POST
    case PUT
}

protocol APIRequest {
    // When the request finishes,
    // i want to handle the data and return a strong type -> Response
    associatedtype Response: Decodable
    
    var method: HTTPMethod { get }
    var path: String { get }
    var body: Data? { get }
    
    func handle(response: Data) throws -> Response
}

extension APIRequest {
    var method: HTTPMethod { return .GET }
    var body: Data? { return nil }
    
    func handle(response: Data) throws -> Response {
        do {
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601
            let decodedResponse = try decoder.decode(Response.self, from: response)
            return decodedResponse
        } catch {
            throw RequestError.CanNotHandleTheDataInProperWay
        }
    }
}
