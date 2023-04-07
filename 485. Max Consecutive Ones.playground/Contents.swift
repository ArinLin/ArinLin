import UIKit

var nums = [1,1,0,1,1,1]

// FIRST

var counter = 0
var resArr = [Int]()

for num in nums {
    if num == 1 {
        counter += 1
    } else {
        counter = 0
    }
    resArr.append(counter)
}
print(resArr)

// SECOND

var maxCount = 0
var count = 0

for num in nums {
    if num == 1 {
        count += 1
    } else {
        maxCount = max(maxCount, count)
        count = 0
    }
}

return max(maxCount, count)
