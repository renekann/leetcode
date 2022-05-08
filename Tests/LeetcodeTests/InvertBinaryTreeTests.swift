//
//  File.swift
//  
//
//  Created by René Kann on 08.05.22.
//

import Foundation


import XCTest
@testable import Leetcode;

final class LongestSubstringTests: XCTestCase {
    
    func test1() throws {
        // arrange
        let node1 = TreeNode(1)
        let node3 = TreeNode(3)
        let node2 = TreeNode(2, node1, node3)
        
        let node6 = TreeNode(6)
        let node9 = TreeNode(9)
        let node7 = TreeNode(7, node6, node9)
        let givenTree = TreeNode(4, node2, node7)
        
        let value = [TreeNode(4), ]
        let solution = Solution()
        
        // act
        let length = solution.invertTree(givenTree)
        
        // assert
        XCTAssertEqual(length, 3)
    }
}
