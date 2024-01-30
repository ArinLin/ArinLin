import Foundation

var s = "leetcode"
var k = 3

func maxVowels(_ s: String, _ k: Int) -> Int {
    var vovelcountMax = 0
    var count = 0
    var arr = Array(s)
    
    for i in 0...k-1  {
        if arr[i] == "a" ||  arr[i] == "e" ||  arr[i] == "i" ||  arr[i] == "o" ||  arr[i] == "u" {
            count += 1
        }
    }
    vovelcountMax = count
    
    if k == s.count {
        return vovelcountMax
    }
    
    for i in k...s.count-1 {
        if arr[i-k] == "a" ||  arr[i-k] == "e" ||  arr[i-k] == "i" ||  arr[i-k] == "o" ||  arr[i-k] == "u" {
            count -= 1
        }
        if arr[i] == "a" ||  arr[i] == "e" ||  arr[i] == "i" ||  arr[i] == "o" ||  arr[i] == "u" {
            count += 1
            vovelcountMax = max(vovelcountMax, count)
        }
    }
    return vovelcountMax
}

var ans = maxVowels(s, k)
print(ans)
