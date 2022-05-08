import Foundation


extension Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var cache: [Int:[Int]] = [:]
        
        for (index, number) in nums.enumerated() {
            
            let cachedObject: [Int]? = cache[number] ?? nil
            
            if let cachedObject = cachedObject {
                cache[number] = cachedObject + [index]
            } else {
                cache[number] = [index]
            }
            
            let difference = target - number
            let right: [Int]? = cache[difference] ?? nil
            
            if let right = right {
                for indexRight in right {
                    guard indexRight != index else { continue }
                    return [index, indexRight]
                }
            }
        }
        
        return [-1, -1]
    }
}

