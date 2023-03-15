import UIKit

var rings = "B0B6G0R6R0R6G9"
var count = 0

for rod in 0...10{
    if rings.contains(String(rod)){
        if rings.contains("B"+String(rod)) && rings.contains("R"+String(rod)) && rings.contains("G"+String(rod)){
            count += 1
        }
    }
}

print(count)


//var ringsArr = Array(rings).map(String.init)
//var dict: [Int:String] = [:]
//var color = 0
//var num = 1
//
//while num < ringsArr.count{
//    if dict.keys.contains(Int(ringsArr[num])!){
//        dict.updateValue(dict[Int(ringsArr[num])!]! + ringsArr[color], forKey: Int(ringsArr[num])!)
//    }else{
//        dict.updateValue(ringsArr[color], forKey: Int(ringsArr[num])!)
//    }
//    num += 2
//    color += 2
//}
//
//print(dict)
//var count = 0
//
//for (i, s) in dict{
//    if s.contains("B") && s.contains("R") && s.contains("G"){
//        count += 1
//    }
//}
//print(count)
