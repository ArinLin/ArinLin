import UIKit

var s = "Hello how are you Contestant"
var k = 4

var ss = s.split(separator: " ")
var res = [String]()

if k == ss.count {
    return s
} else {
    for (index,word) in ss.enumerated() {
        if index < k {
            res.append(String(word))
        }
    }
    return res.joined(separator: " ")
}
