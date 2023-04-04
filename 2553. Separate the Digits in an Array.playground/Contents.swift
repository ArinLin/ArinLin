import UIKit

var nums = [13,25,83,77,8,156,934]
var new = [String]()

// FIRST

var nn = nums.map{String($0)}.joined()
for n in nn {
    new.append(String(n))
}
print(new.map{Int($0)!})

// SECOND

//for n in nums {
//    if n > 9 {
//        var temp = [Int]()
//        var t = n
//        while t > 0 {
//            var s = t
//            temp.insert(s%10, at: 0)
//            t = s/10
//        }
//        new += temp
//    } else {
//        new.append(n)
//    }
//}
//print(new)
