import UIKit

// FIRST

var num = 60957600
var str = String(num)
print(str)
var rev = String(str.reversed())
print(rev)

var revArr = Array(rev)
print(revArr)


var index = 0
for _ in revArr{
    if String(revArr[index]) == String(0){
        revArr.removeFirst()
    }
}
print(revArr)

var strFromArr = String(revArr)
print(strFromArr)
var rev2 = String(strFromArr.reversed())
print(rev2)

if Int(rev2)! == num{
    print(true)
}else{
    print(false)
}


// SECOND

func isSameAfterReversals(_ num: Int) -> Bool {
    num == 0 || num % 10 != 0
}
