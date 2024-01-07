import Foundation

var s = "baabb"
// Output: 2

func removePalindromeSub(_ s: String) -> Int {
    let arr = Array(s)
    var l = 0
    var r = arr.count - 1
    while l < r {
        if arr[l] != arr[r] {
            return 2
        }
        l += 1
        r -= 1
    }
    return 1
}

var ans = removePalindromeSub(s)
print(ans)

// second solution

//func removePalindromeSub(_ s: String) -> Int {
//    if s.isEmpty { return 0 }
//    let sb = String(s.reversed())
//
//    if sb == s { return 1 }
//
//    return 2
//}
