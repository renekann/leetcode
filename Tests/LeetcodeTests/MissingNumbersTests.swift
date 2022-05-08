//
//  MissingNumbersTests.swift
//  
//
//  Created by René Kann on 08.05.22.
//

import XCTest
@testable import Leetcode;

final class MissingNumbersTests: XCTestCase {
    
    func test1() throws {
        // arrange
        let input = [3,0,1]
        let solution = Solution()
        
        // act
        let result = solution.missingNumbers(input)
        
        // assert
        XCTAssertEqual(result, 2)
    }
    
    func test2() throws {
        // arrange
        let input = [0,1]
        let solution = Solution()
        
        // act
        let result = solution.missingNumbers(input)
        
        // assert
        XCTAssertEqual(result, 2)
    }
    
    func test3() throws {
        // arrange
        let input = [9,6,4,2,3,5,7,0,1]
        let solution = Solution()
        
        // act
        let result = solution.missingNumbers(input)
        
        // assert
        XCTAssertEqual(result, 8)
    }
}
