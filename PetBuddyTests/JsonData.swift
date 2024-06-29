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
       "photoUrl": "/photos/image1.jpg",
       "createdAt": "2020-04-01T12:00:00Z",
       "caption": "Living her best life! #corgi #puppyStyle"
     },
     {
       "photoUrl": "/photos/image2.jpg",
       "createdAt": "2020-03-11T04:44:00Z",
       "caption": "Bath time is best time!"
     },
     {
       "photoUrl": "/photos/image3.jpg",
       "createdAt": "2020-01-03T17:32:00Z",
       "caption": "Not sure if alien or dog . . ."
     }
    ]
    """
    
    static let badJson = """
    [
    "bad Json"
    ]
    """
}
