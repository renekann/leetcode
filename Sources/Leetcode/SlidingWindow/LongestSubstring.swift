import Foundation

extension Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        guard s.count > 1 else { return s.count };
        
        let determineLongestSubstring: (String, [String.Element]) -> String = { currentlongestSubstring, currentSubstringList in
            let currentSubstring = currentSubstringList.reduce("") { $0 + String($1) }
            return (currentlongestSubstring.count < currentSubstring.count) ? currentSubstring : currentlongestSubstring
        }
        
        var longestSubstring = "";
        var currentSubstringList: [String.Element] = []
        
        for (_, char) in s.enumerated() {
            
            
            if currentSubstringList.contains(char) {
                
                longestSubstring = determineLongestSubstring(longestSubstring, currentSubstringList);
                
                let charOccurence = currentSubstringList.firstIndex(of: char)
                
                if let charOccurence = charOccurence {
                    currentSubstringList.removeFirst(charOccurence + 1)
                }
            }
            
            currentSubstringList.append(char);
        }

        longestSubstring = determineLongestSubstring(longestSubstring, currentSubstringList);
        return longestSubstring.count;
    }
}
