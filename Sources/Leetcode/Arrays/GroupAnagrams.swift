extension Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var cache: [String:[String]] = [:]
        
        for word in strs {
            let orderedWord = String(Array(word).sorted())
            
            if let cached = cache[orderedWord] {
                cache[orderedWord] = cached + [word]
            } else {
                cache[orderedWord] = [word]
            }
        }
        
        return cache.values.map { $0 }
    }
}
