import UIKit

var nums = [1,13,10,12,31]

var str = nums.map{String($0)}
var revStr = [String]()


for s in str {
    revStr.append(String(s.reversed()))
}

var rev = revStr.map{Int($0)!}

var res = nums + rev

print(res)

var dict: [Int:Int] = [:]

for n in res {
    if let d = dict[n] {
        dict[n] = d + 1
    } else {
        dict[n] = 1
    }
}

print(dict.keys.count)


// SECOND SOLUTION

let a = nums.map(String.init).map { String($0.reversed()) }.compactMap(Int.init)
print(Set(nums + a).count)
