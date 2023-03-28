import UIKit

var num = 1000
//var str = String(num)
//var arr = [String]()
//
//for n in str {
//    arr.append(String(n))
//}
//print(arr)
////var filt = arr.filter({$0 != "0"})
//var sort = arr.sorted(by: <)
//var res = [String]()
//
//for (i,n) in sort.enumerated() {
//    if i < sort.count / 2 {
//        res.append(n + sort[i+2])
//    }
//}
//print(res)
//var sum = Int(res[0])! + Int(res[1])!
//print(sum)

// SECOND

let ds = String(num)
        .map { Int(String($0))! }
        .sorted()
print((ds[0] + ds[1]) * 10 + ds[2] + ds[3])
