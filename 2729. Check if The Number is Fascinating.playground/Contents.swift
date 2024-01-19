import Foundation

var n = 192 // Output: true // The resulting number is 192384576. This number contains all the digits from 1 to 9 exactly once.

func isFascinating(_ n: Int) -> Bool {
    let str = "\(n)\(2*n)\(3*n)"
    guard str.count == 9 else { return false }
    guard !str.contains("0") else { return false}
    
    var dict: [Character:Int] = [:]
    
    for ch in Array(str) {
        if let d = dict[ch] {
            dict[ch] = 1 + d
        } else {
            dict[ch] = 1
        }
    }
    
    for n in dict.values {
        if n > 1 {
            return false
        }
    }
    
    return true
}

var ans = isFascinating(n)
print(ans)
