import UIKit

var num1 = 2
var num2 = 3
var steps = 0

while num1 > 0 && num2 > 0 {
    if num1 >= num2 {
        num1 = num1 - num2
        steps += 1
    } else if num2 > num1 {
        num2 = num2 - num1
        steps += 1
    }
}
print(steps)
