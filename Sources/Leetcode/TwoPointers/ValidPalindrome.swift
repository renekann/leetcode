extension Solution {
    func isPalindrome(_ s: String) -> Bool {
        let pattern = "[^a-z0-9]+"
        let cleaned = s.lowercased().replacingOccurrences(of: pattern, with: "", options: [.regularExpression])

        let half = cleaned.count / 2
        let rangeLeft = cleaned.startIndex..<cleaned.index(cleaned.startIndex, offsetBy: half)
        let rangeRight = cleaned.index(cleaned.endIndex, offsetBy: -half)..<cleaned.endIndex
        
        let leftHalfValue = cleaned[rangeLeft]
        let rightHalfValue = String(cleaned[rangeRight].reversed())

        return leftHalfValue == rightHalfValue
    }
}
