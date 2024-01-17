import Foundation

var word1 = "zzzyyy"
var word2 = "iiiiii"
// Output: true

func checkAlmostEquivalent(_ word1: String, _ word2: String) -> Bool {
    var allowed = 3
    
    var dict = [Character:Int]()
    
    var word1Arr = Array(word1)
    var word2Arr = Array(word2)
    
    for ch in word1Arr {
        if let d = dict[ch] {
            dict[ch] = d + 1
        } else {
            dict[ch] = 1
        }
    }
    
    for ch in word2Arr {
        if let d = dict[ch] {
            dict[ch] = d - 1
        } else {
            dict[ch] = -1
        }
    }
    
    for num in dict.values {
        if num > allowed || num < -allowed {
            return false
        }
    }
    
    return true
}

var ans = checkAlmostEquivalent(word1, word2)
print(ans)
