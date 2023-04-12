import UIKit

var nums1 = [3,1]
var nums2 = [2,3]
var nums3 = [1,2]

var dict: [Int:Int] = [:]

for n in Set(nums1) {
    if let d = dict[n] {
        dict[n] = d + 1
    } else {
        dict[n] = 1
    }
}

for n in Set(nums2) {
    if dict.keys.contains(n) {
        dict[n] = dict[n]! + 1
    } else {
        dict[n] = 1
    }
}

for n in Set(nums3) {
    if dict.keys.contains(n) {
        dict[n] = dict[n]! + 1
    } else {
        dict[n] = 1
    }
}

var res = [Int]()

return Array(dict.filter({$1 >= 2}).keys).isEmpty ? res : Array(dict.filter({$1 >= 2}).keys)
