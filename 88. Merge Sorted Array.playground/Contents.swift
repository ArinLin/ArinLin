import UIKit

var nums1 = [1,2,3,0,0,0]
var nums2 = [2,5,6]
var m = 3
var n = 3

for num in nums2 {
    nums1.remove(at: nums1.firstIndex(of: 0)!)
    nums1.append(num)
}

print(nums1.sorted(by: <))

// SECOND

for i in 0..<n {
    nums1[m+i] = nums2[i]
}
print(nums1.sorted(by: <))

// THIRD

//var i = 0
//var j = 0
//var result = [Int]()
//
//while i < m, j < n {
//     if nums1[i] > nums2[j] {
//        result.append(nums2[j])
//        j += 1
//     } else if nums2[j] > nums1[i] {
//        result.append(nums1[i])
//        i += 1
//     } else {
//        result.append(nums2[j])
//        result.append(nums1[i])
//        i += 1
//        j += 1
//     }
//}
//print(result)
//
//while i < m {
//     result.append(nums1[i])
//     i += 1
//}
//
//while j < n {
//     result.append(nums2[j])
//     j += 1
//}
//
//nums1 = result
//print(nums1)

// FOURTH

//var p1 = m - 1
//var p2 = n - 1
//var p = m + n - 1
//
//while p1 >= 0 && p2 >= 0 {
//    if nums1[p1] < nums2[p2] {
//        nums1[p] = nums2[p2]
//        p2 -= 1
//        p -= 1
//    } else {
//        nums1[p] = nums1[p1]
//        p1 -= 1
//        p -= 1
//    }
//
//}
//print(nums1)
//
//while p2 >= 0 {
//    nums1[p] = nums2[p2]
//    p2 -= 1
//    p -= 1
//}
//print(nums1)
