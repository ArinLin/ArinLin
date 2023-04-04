import UIKit

var arr = [1,2,2,3,3,3]

// FIRST SOLUTION

var dict: [Int:Int] = [:]
for n in arr {
    if let d = dict[n] {
        dict[n] = d + 1
    } else {
        dict[n] = 1
    }
}

for num in dict.sorted(by: >) {
    if num.key == num.value {
        return num.value
    }
}
return -1

// SECOND (ANOTHER DICT SOLUTION)

var luckyNumber = -1
var map : [Int : Int] = [:]
for num in arr {
    map[num] = (map[num] == nil) ? 1 : (map[num]! + 1)
}

for key in map.keys {
    if key == map[key] {
        luckyNumber = max(luckyNumber,key)
    }
}

return luckyNumber
