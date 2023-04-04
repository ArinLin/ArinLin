import UIKit

var nums = [5,0,1,2,3,4]

var res = [Int]()
for n in 0..<nums.count {
    res.append(nums[nums[n]])
}
print(res)
