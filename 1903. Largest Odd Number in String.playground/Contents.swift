import UIKit

var num = "23953767242388496965328710148"

// THIRD

//for char in num.reversed() {
//    if (Int(String(char)) ?? 0) % 2 == 0 {
//        num.removeLast()
//        continue
//    }
//    break
//}
//
//return num


// SECOND

var rev = String(num.reversed())

var odd = ["1","3","5","7","9"]
var even = ["0","2","4","6","8"]

var arr = [Character]()
for n in rev {
    arr.append(n)
}
print(arr)
var res = [Character]()

for n in arr {
    if odd.contains(String(n)) {
        res = arr
        break
    } else if even.contains(String(n)) {
        arr.remove(at: arr.firstIndex(of: n)!)
    }
}

print(res)

var ans = res.compactMap({String($0)}).joined()
print(String(ans.reversed()))


// FIRST (Output Limit Exceeded)

//var arr = [Character]()
//
//for n in num {
//    arr.append(n)
//}
//print(arr)
//
//var intArr = arr.compactMap({Int(String($0))})
//print(intArr)
//
//for _ in intArr{
//    var last = intArr.last!
//    if last % 2 != 0 {
//        print(intArr)
//    } else if last % 2 == 0 {
//        intArr.remove(at: intArr.count - 1)
//    }
//}
//print(intArr.map{String($0)}.joined())
