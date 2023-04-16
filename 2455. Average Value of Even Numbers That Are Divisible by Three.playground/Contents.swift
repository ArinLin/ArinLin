import UIKit

var nums = [43,9,75,76,25,96,46,85,19,29,88,2,5,24,60,26,76,24,96,82,97,97,72,35,21,77,82,30,94,55,76,94,51]

var sum = [Int]()
var counter = 0

for n in nums {
    if n % 2 == 0 && n % 3 == 0 {
        counter += 1
        sum.append(n)
    }
}

var res = sum.reduce(0, +)

if sum.count == 1 {
    print(sum[0])
} else if sum.count > 1 {
    print(res / counter)
} else {
    print(0)
}

// SECOND

//var sum = 0
//var count = 0
//
//for n in nums {
//    if n % 6 == 0 {
//        count += 1
//        sum += n
//    }
//}
//print(count)
//print(sum)
//
//if count > 0 {
//    print(sum / count)
//}
