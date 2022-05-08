import Foundation

extension Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        guard s.count > 1 else { return s.count };
        
        let determineLongestSubstring: (String, [String.Element]) -> String = { currentlongestSubstring, currentSubstringList in
            let currentSubstring = currentSubstringList.reduce("") { $0 + String($1) }
            print("currentSubstring \(currentSubstring)")
            return (currentlongestSubstring.count < currentSubstring.count) ? currentSubstring : currentlongestSubstring
        }
        
        var longestSubstring = "";
        var currentSubstringList: [String.Element] = []
        
        for (index, char) in s.enumerated() {
            
            print("currentChar \(char)")
            
            if currentSubstringList.contains(char) {
                
                longestSubstring = determineLongestSubstring(longestSubstring, currentSubstringList);
                
                let charOccurence = currentSubstringList.firstIndex(of: char)
                
                if let charOccurence = charOccurence {
                    print("charOccurence \(charOccurence)")
                    print("remove until \(charOccurence) for \(char)")
                    currentSubstringList.removeFirst(charOccurence + 1)
                }
            }
            
            currentSubstringList.append(char);
        }

        longestSubstring = determineLongestSubstring(longestSubstring, currentSubstringList);
        print("longestSubstring \(longestSubstring)")
        return longestSubstring.count;
    }
}
