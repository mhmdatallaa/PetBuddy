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
    associatedtype Response
    
    var method: HTTPMethod { get }
    var path: String { get }
    var body: Data? { get }
    
    func handle(response: Data) throws -> Response
}

