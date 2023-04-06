import UIKit

var arr = [-3,0,1,-3,1,1,1,-3,10,0]
var dict: [Int:Int] = [:]

for n in arr {
    if let d = dict[n] {
        dict[n] = d + 1
    } else {
        dict[n] = 1
    }
}

return dict.values.count == Set(dict.values).count 

