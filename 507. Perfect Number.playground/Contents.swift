import UIKit

var num = 28

// FIRST

var arr = [Int]()

for n in 1..<num {
    if num % n == 0 {
        arr.append(n)
    }
}
print(arr)
var sum = arr.reduce(0, +)
print(sum)
if sum == num {
    print(true)
} else {
    print(false)
}


// SECOND

//var sum = 1
//var i = 2
//
//while i * i <= num {
//    if num % i == 0 {
//        sum = sum + i + num / i
//    }
//    i += 1
//}
//
//if sum == num {
//    print(true)
//} else {
//    print(false)
//}
