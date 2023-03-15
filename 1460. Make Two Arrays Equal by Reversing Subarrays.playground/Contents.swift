import UIKit

var target = [1,2,3,4]
var arr = [2,4,1,3]

// second solution

var l = 0
var r = 0

for i in target{
    while r < target.count{
        if target[i] == arr[r]{
            l = i + 1
            r = l
            arr[l...r].reversed()
        }else{
            r += 1
        }
    }
}

print(arr)


// first solution

//if target.sorted(by: <) == arr.sorted(by: <){
//    return true
//}else{
//    return false
//}
