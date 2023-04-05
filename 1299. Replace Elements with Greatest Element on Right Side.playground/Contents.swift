import UIKit

var arr = [17,24,4,6,1,1,2,3]
var new = [Int]()

for (i,_) in arr.enumerated() {
    var max = 0
    while i < arr.count - 1 {
        arr.remove(at: 0)
        max = arr.max()!
        new.append(max)
    }
    if i == arr.count - 1 {
        new.append(-1)
    }
}
print(new)
