//
//  MovieSearch2Tests.swift
//  MovieSearch2Tests
//
//  Created by Frank Mortensen on 24/02/2020.
//  Copyright © 2020 Frank Mortensen. All rights reserved.
//

import XCTest

class MovieSearch2Tests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGenre() {
        let genre: Genre = Genre(id: 123, name: "Action")
        XCTAssert(genre.name == "Action")
        XCTAssert(genre.id == 125)
    }
    
}
