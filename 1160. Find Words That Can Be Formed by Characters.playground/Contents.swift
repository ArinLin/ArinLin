import UIKit

var words = ["hello","world","leetcode"]
var chars = "welldonehoneyr"

var count = 0


for word in words {
    var char = Array(chars)
    var flag = true
    for symb in word {
        if char.contains(symb) {
            char.remove(at: char.firstIndex(of: symb)!)
        } else {
            flag = false
            break
        }
    }
    if flag == true {
        count += word.count
    }
}
print(count)
