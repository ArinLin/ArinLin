import UIKit

var num = 121
var arr = Array(arrayLiteral: num)
var res = [Int]()
var count = 0


for n in arr{
    var t = n
    while t > 0{
        var symb = t % 10
        if symb != 0 && n % symb == 0 {
            count += 1
        }
        t = t / 10
    }
}
print(count)

