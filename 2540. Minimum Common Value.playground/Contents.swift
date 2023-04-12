import UIKit

var nums1 = [1,2,3,6]
var nums2 = [2,3,4,5]

// FASTEST SOLUTION

var i = 0
var j = 0
var common = -1
while i < nums1.count && j < nums2.count {
    if nums1[i] == nums2[j] {
        common = nums1[i]
        break
    } else if nums1[i] < nums2[j] {
        i += 1
    } else {
        j += 1
        
    }
}
print(common)

// SECOND SOLUTION

//var nums11 = Set(nums1)
//var nums22 = Set(nums2)
//
//print(nums11.intersection(nums22).min()!)



// THIRD SOLUTION


//for n in nums1 {
//    if nums2.contains(n) {
//        print(n)
//        break
//    }
//}

