import UIKit

var arr1 = [2,3,1,3,2,4,6,7,9,2,19]
var arr2 = [2,1,4,3,9,6]

var res = [Int]()
var arr1 = arr1

for n in arr2 {
    for m in arr1 {
        if arr1.contains(n) {
            res.append(n)
            arr1.remove(at: arr1.firstIndex(of: n)!)
        }
    }
}

return (res + arr1.sorted(by: <))
