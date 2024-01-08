import Foundation

var word1 = "abcd"
var word2 = "pq"
// Output: "apbqcd"

var word1Arr = Array(word1)
var word2Arr = Array(word2)
var res = ""
var arr = [Character]()

var maximum = max(word1Arr.count, word2Arr.count)

for i in 0..<maximum {
    if i < word1Arr.count {
        arr.append(word1Arr[i])
    }
    if i < word2Arr.count {
        arr.append(word2Arr[i])
    }
}

print(arr)

for ch in arr {
    res += String(ch)
}

print(res)


// second solution using zip

func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var result = ""
    
    for (char1, char2) in zip(word1, word2) {
        result += [char1, char2]
    }
    
    if word1.count > word2.count {
        result += word1[word2.endIndex...]
    } else {
        result += word2[word1.endIndex...]
    }
    
    return result
}
