import UIKit

var nums = [10,4,8,3]
//var leftArr = [Int]()
//var rightArr = [Int]()
//
//var sumL = 0
//var sumR = 0
//
//for i in 0..<nums.count {
//    leftArr.append(sumL)
//    sumL += nums[i]
//    rightArr.insert(sumR, at: 0)
//    sumR += nums[nums.count - 1 - i]
//}
//
//print(leftArr)
//print(rightArr)
//
//var res = [Int]()
//
//for i in 0..<leftArr.count {
//    res.append(abs(leftArr[i] - rightArr[i]))
//}
//print(res)



var leftSum = 0, rightSum = nums.reduce(0, +)
print(rightSum)
var result = [Int]()
       
for num in nums {
    rightSum -= num
    print(rightSum)
    result.append(abs(leftSum - rightSum))
    leftSum += num
    print(leftSum)
}

       
print(result)
