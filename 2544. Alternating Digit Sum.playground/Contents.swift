import UIKit

var n = 886997
var str = String(n)
print(str)
var num = [String]()

for n in str {
    num.append(String(n))
}
print(num)

var res1 = 0

for (i,_) in num.enumerated() {
    if i % 2 == 0 {
        res1 += Int(num[i])!
    } else {
        res1 -= Int(num[i])!
    }
}
print(res1)

