import UIKit

var s = "RLRRRLLRLL"

var counter = 0
var balance = 0

for symb in s {
    if symb == "L" {
        balance += 1
    } else if symb == "R" {
        balance -= 1
    }
    if balance == 0 {
        counter += 1
    }
}

print(counter)
