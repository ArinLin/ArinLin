import Foundation

var nums = [3,1,2,4]
// Output: [2,4,3,1]

var p1 = 0
var p2 = nums.count - 1

for num in nums {
    if num % 2 == 0 {
        nums[p1] = num
        p1 += 1
    } else {
        nums[p2] = num
        p2 -= 1
    }
}

print(nums)

