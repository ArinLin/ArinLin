import Foundation

//var s = ["h","e","l","l","o"]
// Output: ["o","l","l","e","h"]
var s = ["H","a","n","n","a","h"]
// Output: ["h","a","n","n","a","H"]

var p2 = s.count - 1

for ch in s {
    s[p2] = ch
    p2 -= 1
}

print(s)

