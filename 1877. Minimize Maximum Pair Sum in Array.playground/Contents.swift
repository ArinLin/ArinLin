import Foundation

var nums = [3,5,4,2,4,6]
// Output: 8
//var nums = [3,5,2,3]
// Output: 7

func minPairSum(_ nums: [Int]) -> Int {
    var numsSort = nums.sorted(by: <)
    var p2 = numsSort.count - 1
    var res = [Int()]
    
    for num in numsSort {
        res.append(num + numsSort[p2])
        p2 -= 1
        if p2 < numsSort.count / 2 {
            break
        }
    }
    var ans = res.sorted(by: <)
    return ans.popLast()!
}

var ans = minPairSum(nums)
print(ans)


// second solution

//func minPairSum(_ nums: [Int]) -> Int {
//    let sorted = nums.sorted()
//    var l = 0
//    var r = nums.count - 1
//    var maxSum = 0
//    while l < r {
//        maxSum = max(maxSum, sorted[l] + sorted[r])
//        l += 1
//        r -= 1
//    }
//    return maxSum
//}

// third solution

//func minPairSum(_ nums: [Int]) -> Int {
//    var result = 0
//    let nums = nums.sorted()
//    for i in 0..<nums.count / 2 {
//        result = max(result, nums[i] + nums[nums.count - i - 1])
//    }
//    return result
//}
