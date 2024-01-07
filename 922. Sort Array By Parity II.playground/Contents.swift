import Foundation

var nums = [4,2,5,7]
// Output: [4,5,2,7]

var left = 0
var right = 1


for n in nums {
    if n % 2 == 0 {
        nums[left] = n
        left += 2
    } else {
        nums[right] = n
        right += 2
    }
}

print(nums)
