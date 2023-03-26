import UIKit

var nums = [3,4,5,1,2]
var sortN = nums.sorted(by: <)
var counter = nums.count

while counter > 0 {
    var first = nums.removeFirst()
    print(first)
    nums.insert(first, at: (nums.count))
    print(nums)
    counter -= 1
    if nums == sortN {
        return true
    }
}
return false
