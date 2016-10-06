//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Francisco Anzueto on 8/30/16.
//  Copyright © 2016 Francisco Anzueto. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    // MARK: FoodTracker Tests
    
    // Tests to confirm that the Meal initializer returns when no name or a negative rating is provided.
    func testMealInitialization() {
        // Success case.
        let potentialItem = Meal(name: "Newest meal", rating: 5, photo: nil)
        XCTAssertNotNil(potentialItem)
        
        // Failure cases.
        let noName = Meal(name: "", rating: 0, photo: nil)
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badRating = Meal(name: "Really bad rating", rating: -1, photo: nil)
        XCTAssertNil(badRating, "Negative ratings are invalid, be positive")
    }

}
