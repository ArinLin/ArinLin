import UIKit

var x = 121000

// FIRST

var str = String(x)
var rev = String(str.reversed())
print(rev)

var strint = ""

for symb in rev{
    if symb != ("-"){
        strint += String(symb)
    }
}

print(strint)


if Int(strint) == x {
    print("cool")
} else {
    print("sad")
}

// SECOND

func isPalindrome(_ x: Int) -> Bool {
    guard x >= 0
    else { return false }
    var number = x
    var digit = 0
    while number != 0 {
        digit = digit +  number % 10
        number = number / 10
        if ( number != 0) {
            digit = digit * 10
        }
    }
    if digit == x  {return true } else { return false}
}
