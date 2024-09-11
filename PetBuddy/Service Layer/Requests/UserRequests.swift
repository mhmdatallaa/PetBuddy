//
//  UserRequests.swift
//  PetBuddy
//
//  Created by Mohamed Atallah on 16/08/2024.
//

import Foundation

extension Notification.Name {
    static let signInNotification = Notification.Name("SignInNotification")
    static let signOutNotification = Notification.Name("SingOutNotification")
}

struct SignInUserRequest: APIRequest {
    
    let user: UserAuthentication
    
    init(username: String, password: String) {
        self.user = UserAuthentication(id: username, password: password)
    }
    
    typealias Response = Void
        
    var method: HTTPMethod { return .POST }
    var path: String { return "/user" }
    var body: Data? { return try? JSONEncoder().encode(user) }
    
    func  handle(response: Data) throws -> Void {
        NotificationCenter.default.post(name: .signInNotification, object: nil)
    }
}
