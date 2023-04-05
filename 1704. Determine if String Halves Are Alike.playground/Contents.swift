import UIKit

var s = "textbook"

// FIRST

var vowels = "aeiouAEIOU"

var arr = Array(s)

var counter1 = 0
var counter2 = 0

for i in 0..<arr.count/2 {
    if vowels.contains(arr[i]) {
        counter1 += 1
    }
}

for i in arr.count/2..<arr.count{
    if vowels.contains(arr[i]) {
        counter2 += 1
    }
}

return counter1 == counter2 ? true : false

// SECOND

// declare vowels
let vowels: [Character] = ["a","e","i","o","u"]

// split string in half
let splitIndex = s.count / 2
let a = String(s.lowercased().prefix(splitIndex))
let b = String(s.lowercased().suffix(splitIndex))

// count vowels for both halves of string
let aCount = a.reduce(0) {
     vowels.contains($1) ? $0 + 1 : $0 + 0
}

let bCount = b.reduce(0) {
     vowels.contains($1) ? $0 + 1 : $0 + 0
}

// return if halves are alike
return aCount == bCount
