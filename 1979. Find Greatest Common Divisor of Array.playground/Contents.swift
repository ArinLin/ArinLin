import UIKit

var nums = [7,5,6,8,3]

// FIRST

var min = nums.min()!
var max = nums.max()!
var ans = 0

for i in 1...max{
    if min % i == 0 && max % i == 0 {
        ans = i
    }
}
print(ans)


// SECOND

//let min = nums.min()!
//let max = nums.max()!
//print((1...min).last { min % $0 == 0 && max % $0 == 0 } ?? 1)
