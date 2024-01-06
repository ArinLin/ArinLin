import UIKit

//var s = "Aabb"
//Output: "bbAa"
var s = "tree"

func frequencySort(_ s: String) -> String {
    var ss = Array(s)
    var dict: [Character: Int] = [:]
    var res = String()
    
    for ch in ss {
        if let d = dict[ch] {
            dict[ch] = d + 1
        } else {
            dict[ch] = 1
        }
    }
    
    var sorted = dict.sorted { $0.value > $1.value }
    
    for (ch, v) in sorted {
        for _ in 1...v {
            res += String(ch)
        }
        
    }
    
    return res
}


var ans = frequencySort(s)
print(ans)
