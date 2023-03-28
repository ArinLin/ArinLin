import UIKit

var nums = [20,5,2,10,12,3,14,1]

// FIRST

var maxDifference = 0
var minNum = nums.max()!

if nums.sorted(by: >) == nums{
    print(-1)
}

for num in nums{
    minNum = min(minNum, num)
    maxDifference = max(maxDifference, num - minNum)
}
print(maxDifference)


