//
//  MissingNumbers.swift
//  
//
//  Created by René Kann on 02.05.22.
//

import Foundation

extension Solution {
    func missingNumbers(_ numbers: [Int]) -> Int {
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
}
