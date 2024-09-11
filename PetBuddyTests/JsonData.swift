//
//  JsonData.swift
//  PetBuddyTests
//
//  Created by Mohamed Atallah on 17/06/2024.
//

import Foundation

enum JsonData {
    static let goodFeed = """
            [
              {
                "id": "39CC5092-9901-4574-BD88-8455CAD0F2B0"
                "createdAt": "2020-04-01T12:00:00Z",
                "caption": "Living her best life! #corgi #puppyStyle"
              },
              {
                "id": "4B465E25-3CBC-46FD-9F7D-BE687FE73673"
                "createdAt": "2020-03-11T04:44:00Z",
                "caption": "Bath time is best time!"
              },
              {
                "id": "1001F493-94BB-4000-A8A0-BC3D81FFD8FD"
                "createdAt": "2020-01-03T17:32:00Z",
                "caption": "Not sure if alien or dog..."
              }
            ]
            """
    
    static let badJson = """
      [
        "bad json"
      ]
      """
    
    static let goodSignUp = """
      {
        "username": "username",
        "email": "email@example.com"
      }
      """
}
