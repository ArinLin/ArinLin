import UIKit

var s = "ababaaabaaabbb"
var arr = Array(s)

// FIRST

var lastA = arr.lastIndex(of: "a")!
var firstB = arr.firstIndex(of: "b")!
if lastA > firstB {
    print(false)
} else {
    print(true)
}

// SECOND

var flag = false
for i in arr {
    if String(i) == "b" && flag == false {
        flag = true
    } else if String(i) == "a" && flag == true {
        return false
    }
}
