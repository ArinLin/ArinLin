import UIKit

var nums = [2,5,1,3,4,7]
var n = 3
var res = [Int]()

for i in 0..<n {
    res.append(nums[i])
    res.append(nums[i + n])
}
print(res)



