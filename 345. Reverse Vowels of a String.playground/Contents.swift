import Foundation

var s = "leetcode"
// Output: "leotcede"
// a, e, i, o, u

func reverseVowels(_ s: String) -> String {
    var ss = Array(s)
    var vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    var leftPointer = 0
    var rightPointer = ss.count - 1
    var res = ""
    
    while leftPointer < rightPointer {
        if vowels.contains(ss[leftPointer]) && vowels.contains(ss[rightPointer]) {
            ss.swapAt(leftPointer, rightPointer)
            leftPointer += 1
            rightPointer -= 1
        } else if vowels.contains(ss[leftPointer]) {
            rightPointer -= 1
        } else if vowels.contains(ss[rightPointer]) {
            leftPointer += 1
        } else {
            leftPointer += 1
            rightPointer -= 1
        }
    }
    
    for ch in ss {
        res += String(ch)
    }
    return res
}

var ans = reverseVowels(s)
print(ans)
