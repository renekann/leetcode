//
//  File.swift
//  
//
//  Created by René Kann on 08.05.22.
//

import XCTest
@testable import Leetcode;

//print(twoSum([2,7,11,15], 9))
//print(twoSum([3,2,4], 6))
//print(twoSum([3,3], 6))
//print(twoSum([-3,4,3,90], 0))


final class TwoSumsTests: XCTestCase {
    
    func test1() throws {
        // arrange
        let input = [2,7,11,15]
        let target = 9
        let solution = Solution()
        
        // act
        let result = solution.twoSum(input, target)
        
        // assert
        XCTAssertEqual(result, [1, 0])
    }
    
    func test2() throws {
        // arrange
        let input = [3,2,4]
        let target = 6
        let solution = Solution()
        
        // act
        let result = solution.twoSum(input, target)
        
        // assert
        XCTAssertEqual(result, [2,1])
    }
    
    func test3() throws {
        // arrange
        let input = [3,3]
        let target = 6
        let solution = Solution()
        
        // act
        let result = solution.twoSum(input, target)
        
        // assert
        XCTAssertEqual(result, [1,0])
    }
    
    func test4() throws {
        // arrange
        let input = [-3,4,3,90]
        let target = 0
        let solution = Solution()
        
        // act
        let result = solution.twoSum(input, target)
        
        // assert
        XCTAssertEqual(result, [2,0])
    }
}
