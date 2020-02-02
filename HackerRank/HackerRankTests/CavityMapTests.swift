//
//  CavityMapTests.swift
//  CavityMapTests
//
//  Created by Paul Solt on 2/1/20.
//  Copyright © 2020 Paul Solt. All rights reserved.
//

import XCTest

class CavityMapTests: XCTestCase {
    
    var cavity = CavityMap()
    
    func test3x3CavityMap() {
        let input =
            ["1112",
             "1912",
             "1892",
             "1234"]
        let expected =
            ["1112",
             "1X12",
             "18X2",
             "1234"]
        
        let actual = cavity.cavityMap(grid: input)
        
        XCTAssertEqual(expected, actual)
    }
    
    func test9x9CavityMap() {
        let input =
            ["179443854",
            "961621369",
            "164139922",
            "968633951",
            "812882578",
            "257829163",
            "812438597",
            "176656233",
            "485773814"]

        let expected =
            ["179443854",
            "961X21369",
            "164139922",
            "96X633951",
            "812882578",
            "25782X163",
            "8124385X7",
            "176656233",
            "485773814"]
        
        let actual = cavity.cavityMap(grid: input)
        cavity.printGrid(grid: actual)
        
        XCTAssertEqual(expected, actual)
    }
    
}
