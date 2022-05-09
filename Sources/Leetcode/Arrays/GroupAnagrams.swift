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
            
            print("word \(word)")
            print("orderedWord \(orderedWord)")
            print("cache \(cache)")
        }
        
        return cache.values.map { $0 }
    }
}
