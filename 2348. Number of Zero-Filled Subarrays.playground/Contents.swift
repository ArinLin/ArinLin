import UIKit

var nums = [0,0,0,2,0,0]

var count = 0
var result = 0

for num in nums {
    if num == 0 {
        count += 1
        result += count
    } else {
        count = 0
    }
}
print(result)
