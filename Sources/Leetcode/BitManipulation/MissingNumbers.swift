//
//  MissingNumbers.swift
//  
//
//  Created by René Kann on 02.05.22.
//

import Foundation

public func missingNumbers(_ numbers: [Int]) -> Int {
    // [9,6,4,2,3,5,7,0,1]
    
    var summedNumbers = 0
    var expectedSum = 0
    
    for index in 0...numbers.count {
        
        if index < numbers.count {
            summedNumbers += numbers[index]
        }
        expectedSum += index
    }
    
    return expectedSum - summedNumbers
}
