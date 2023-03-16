import UIKit

var nums = [1,5,4,5]

// FIRST
var numsS = nums.sorted(by: >)
var res = (numsS[0] - 1)*(numsS[1] - 1)
print(res)

//SECOND

//var firstMax = nums.max()!
//print(firstMax)
//
//for i in nums{
//    if i == firstMax{
//        nums.remove(at: nums.firstIndex(of: firstMax)!)
//        break
//    }
//}
//print(nums)
//
//var secondMax = nums.max()!
//print(secondMax)
//
//var mult = (secondMax - 1)*(firstMax - 1)
//
//print(mult)
