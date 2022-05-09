//
//  GroupAnagramsTests.swift
//  
//
//  Created by René Kann on 08.05.22.
//

import XCTest
@testable import Leetcode;

extension Array where Element == [String] {
    func sortMulti() -> [[String]] {
        return sorted {
            
            let leftWordsList: Array<String> = $0 as Array<String>
            let rightWordsList: Array<String> = $1 as Array<String>
            
            if leftWordsList.count != rightWordsList.count {
                return leftWordsList.count < rightWordsList.count
            }
            
            let firstValue = String(Array<String.Element>($0.first!).sorted())
            let secondValue = String(Array<String.Element>($1.first!).sorted())
                        
            return firstValue < secondValue
        }
    }
}

final class GroupAnagramsTests: XCTestCase {
    
    func test1() throws {
        // arrange
        let input = ["eat","tea","tan","ate","nat","bat"]
        let solution = Solution()
        
        // act
        let result = solution.groupAnagrams(input)
        let sortedResult = result.sortMulti()
        
        // assert
        XCTAssertEqual(sortedResult, [["bat"], ["tan", "nat"], ["eat","tea", "ate"]])
    }
    
    func test2() throws {
        // arrange
        let input = [""]
        let solution = Solution()
        
        // act
        let result = solution.groupAnagrams(input)
        let sortedResult = result.sortMulti()
        
        // assert
        XCTAssertEqual(sortedResult, [[""]])
    }
    
    func test3() throws {
        // arrange
        let input = ["a"]
        let solution = Solution()
        
        // act
        let result = solution.groupAnagrams(input)
        let sortedResult = result.sortMulti()
        
        // assert
        XCTAssertEqual(sortedResult, [["a"]])
    }
}
