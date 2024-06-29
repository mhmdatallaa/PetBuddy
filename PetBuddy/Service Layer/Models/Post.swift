//
//  Post.swift
//  PetBuddy
//
//  Created by Mohamed Atallah on 12/06/2024.
//

import Foundation

struct Post: Codable {
    var caption: String
    var createdAt: Date
    var photoUrl: URL
}