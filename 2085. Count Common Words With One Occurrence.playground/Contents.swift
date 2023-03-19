import UIKit

var words1 = ["a","ab"]
var words2 = ["a","a","a","ab"]

//var dict1: [String:Int] = [:]
//var dict2: [String:Int] = [:]
//
//for word in words1{
//    if dict1[word] != nil{
//        dict1[word] = dict1[String(word)]! + 1
//    }else{
//        dict1[word] = 1
//    }
//}
//print(dict1)
//var filtDict1 = dict1.filter{$0.value == 1}.map{$0.key}
//
//for word in words2{
//    if dict2[word] != nil{
//        dict2[word] = dict2[String(word)]! + 1
//    }else{
//        dict2[word] = 1
//    }
//}
//print(dict2)
//var filtDict2 = dict2.filter{$0.value == 1}.map{$0.key}
//
//var res = [String]()
//
//for word in filtDict1{
//    if filtDict2.contains(word){
//        res.append(word)
//    }
//}
//print(res.count)


// SECOND

var d1 = [String:Int](), d2 = [String:Int]()
for w in words1 { d1[w, default:0] += 1 }
for w in words2 { d2[w, default:0] += 1 }
var count = 0
for (w,c) in d1 {
    if c == 1, let c2 = d2[w], c2 == 1  { count += 1 }
}
print(count)
