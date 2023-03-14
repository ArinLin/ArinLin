import UIKit

var nums1 = [1,2,3,3]
var nums2 = [1,1,2,2]

// var 0ms

var setOfNum1 = Set<Int>()
var setOfNum2 = Set<Int>()

for i in nums1{
    if !nums2.contains(i){
        setOfNum1.insert(i)
    }
}
print(setOfNum1)
for n in nums2{
    if !nums1.contains(n){
        setOfNum2.insert(n)
    }
}
print(setOfNum2)
let res1 = Array<Int>(setOfNum1)
let res2 = Array<Int>(setOfNum2)
print(res1,res2)

// another var

//var newArr1 = [Int]()
//var newArr2 = [Int]()
//
//for i in nums1{
//    if !nums2.contains(i){
//        newArr1.append(i)
//    }
//}
//var res1 = Array(Set(newArr1))
//print(res1)
//
//for n in nums2{
//    if !nums1.contains(n){
//        newArr2.append(n)
//    }
//}
//var res2 = Array(Set(newArr2))
//print(newArr2)
//print([res1,res2])
