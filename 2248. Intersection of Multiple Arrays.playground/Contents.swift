import UIKit

var nums = [[3,1,2,4,5],[1,2,3,4],[3,4,5,6]]

// loop var

//var h = Array<Int>()
//
//for n in nums[0]{
//    if nums[1].contains(n){
//        h.append(n)
//    }
//}
//print(h)
//
//var i = 2
//while i < nums.count{
//    for n in h{
//        if !nums[i].contains(n){
//            h.remove(at: h.firstIndex(of: n)!)
//        }
//    }
//    i+=1
//}
//print(h.sorted(by: <))



// dict var

var dict: [Int:Int] = [:]

for subArr in nums{
    for num in subArr{
        if let dictV = dict[num]{
            dict[num] = dictV + 1
        }else{
            dict[num] = 1
        }
    }
}

print(dict)
print(dict.keys)
var res = Array<Int>()

for (k,v) in dict{
    if v == nums.count{
        res.append(k)
    }
}
print(res.sorted(by: <))
