import UIKit

var nums = [2,3,8,9,11,12]

// FIRST

var supposedX = nums.count
var counter = 0

for v in 1...supposedX {
    var counter = 0
    for num in nums {
        if num >= v {
            counter += 1
        }
    }
    if counter == v{
        print(v)
    }
}
//return -1

// SECOND SOLUTION

var res = -1
for i in 0..<nums.count + 1 {
    var arr = nums.filter { $0 >= i }
    if i == arr.count {
        res = i
    }
}

print(res)


