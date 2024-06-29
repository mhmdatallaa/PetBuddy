//
//  PetBuddyTests.swift
//  PetBuddyTests
//
//  Created by Mohamed Atallah on 17/06/2024.
//

import XCTest
@testable import PetBuddy

final class PetBuddyTests: XCTestCase {
    func testRequestWithGoodData() throws {
        let data = JsonData.goodFeed.data(using: .utf8)!
        
        let request = PostRequest()
        do {
            let result = try request.handle(response: data)
            print(result.count)
            XCTAssertEqual(result.count, 3)
        } catch let decodingError as DecodingError {
            XCTFail((decodingError as CustomDebugStringConvertible).debugDescription)
            print((decodingError as CustomDebugStringConvertible).debugDescription)
        } catch let error {
            XCTFail(error.localizedDescription)
        }
        
    }
    
    func testHandleBadData() {
        let data = JsonData.badJson.data(using: .utf8)!
        
        let request = PostRequest()
        XCTAssertThrowsError(try request.handle(response: data)) { error in
            print(error.localizedDescription)
            XCTAssertTrue(error is RequestError)
        }
    }
}
