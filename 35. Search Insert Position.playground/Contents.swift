import UIKit

var nums = [1,3,5,6]
var target = 5

// FIRST

var l = 0
var r = nums.count

while l != r {
    var mid = (l+r)/2
    if nums[mid] >= target {
        r = mid
    } else {
        l = mid + 1
    }
}
print(r)

// SECOND

var left = 0
var right = nums.count - 1

while left <= right {
    let mid = (left + right) / 2
    
    if nums[mid] < target {
        left = mid + 1
    } else if nums[mid] > target {
        right = mid - 1
    } else {
        return mid
    }
}
return left
}
