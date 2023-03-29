import UIKit

var nums = [1,2,3,4,5]

// FIRST

var dict: [Int:Int] = [:]

for n in nums {
    if let d = dict[n] {
        dict[n] = d + 1
    } else {
        dict[n] = 1
    }
}
print(dict)
var filt = dict.filter({$0.value == 1})
print(filt)

var res = 0

for (k,_) in filt {
    res += k
}
print(res)

// SECOND

var sum = 0
for ele in nums{
    if(nums.filter{$0 == ele}.count == 1){
        sum += ele
    }
}
print(sum)
