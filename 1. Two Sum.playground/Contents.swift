import UIKit

var nums = [3,2,3,3,3,3,3,3,5,3,3]
var target = 7
//loop var

//for i in 0...nums.count - 1{
//    for j in (i+1)...nums.count - 1{
//        if nums[i] + nums[j] == target{
//            print([i,j])
//        }
//    }
//}

// dict var
var dict = [Int: Int]()
       
for (index, num) in nums.enumerated() {
    let complement = target - num
        if let complementIndex = dict[complement] {
            print([complementIndex, index])
        }
    dict[num] = index
//    dict.updateValue(index, forKey: num)
}
print(dict)

