import UIKit

var nums = [1,3,2,1,3,2,2,2,2,2,6,7,5,6,7,6,7,5,7]

var dict: [Int:Int] = [:]

for n in nums {
    if let d = dict[n] {
        dict[n] = d + 1
    } else {
        dict[n] = 1
    }
}
print(dict)

var pairs = 0
var left = 0

for i in dict.values  {
    if i >= 2 {
        pairs += i/2
        left += i%2
    } else {
        left += i
    }
}

print([pairs, left])
