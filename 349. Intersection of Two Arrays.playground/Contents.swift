import UIKit

//var nums1 = [1,2,2,3,1]
//var nums2 = [2,2,3]
//
//var emptyArr = [Int]()
//
//for num in nums1 {
//    if nums2.contains(num) {
//        emptyArr.append(num)
//    }
//}
//
//var res = Set(emptyArr)
//print(Set(emptyArr))
//print(res)

// solution with dict
func intersectionMap(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var dict: [Int:Int] = [:]
    var res = [Int]()
    
    for i in nums1 {
        if let d = dict[i] {
            dict[i] = d + 1
        } else {
            dict[i] = 1
        }
    }
    
    
    for i in nums2 {
        if dict[i] != nil {
            res.append(i)
        }
    }
    return Array(Set(res))
}


// 350. Intersection of Two Arrays II

var nums1 = [1,4]
var nums2 = [4,2,3,1]

var emptyArr = [Int]()

for num in nums1 {
    if nums2.contains(num) {
        emptyArr.append(num)
        nums2.remove(at: nums2.firstIndex(of: num)!)
    }
}

print(emptyArr)
print(nums2)

// var a [7,2,1,3,1]
// var a2 = [7,1,2,2]
func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var dict = [Int:Int](), res = [Int]()
    for n in nums1 {
        if let i = dict[n] {
            dict[n] = i + 1
        } else {
            dict[n] = 1
        }
    }
    for n in nums2 {
        if let i = dict[n], i > 0 {
            res.append(n)
            dict[n] = i - 1
        }
    }
    return res
}
