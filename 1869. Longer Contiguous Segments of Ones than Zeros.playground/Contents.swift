import UIKit

var s = "111000"

// FIRST

var longestOne = 0, longestZero = 0
var curOne = 0, curZero = 0

var n = 0

for ch in s {
    if ch == "0" {
        curOne = 0
        curZero += 1
    } else {
        curOne += 1
        curZero = 0
    }

    longestOne = max(longestOne, curOne)
    longestZero = max(longestZero, curZero)
}

return longestOne > longestZero


// SECOND

var ss = [Character]()

for n in s {
    ss.append(n)
}
print(ss)
var onesCounter = 0
var zerosCounter = 0

var zerRes = [Int]()
var oneRes = [Int]()

for n in ss {
    if n == "1" {
        onesCounter += 1
    } else {
        onesCounter = 0
    }
    if n == "0" {
        zerosCounter += 1
    } else {
        zerosCounter = 0
    }
    zerRes.append(zerosCounter)
    oneRes.append(onesCounter)
}

if zerRes.max()! >= oneRes.max()! {
    print(false)
} else {
    print(true)
}
