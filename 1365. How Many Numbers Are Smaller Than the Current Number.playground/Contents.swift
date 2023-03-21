import UIKit

var nums = [5,8,1,2,2,3]
var res = [Int]()

for n in nums {
    var index = 0
    var count = 0
    while index < nums.count {
        if n > nums[index] {
            count += 1
        }
        index += 1
    }
    res.append(count)
}
print(res)



