import UIKit

var sentences = ["alice and bob love leetcode", "i think so too", "this is great thanks very much"]

// FIRST

//var max = 0
//
//for sentence in sentences{
//    var f = sentence.filter{$0 == " "}
//    if f.count + 1 > max{
//        max = f.count + 1
//    }
//}
//print(max)

// SECOND

print(sentences.map{$0.split(separator: " ").count}.max() ?? 0)

// THIRD

//var ans = 0
//for i in 0..<sentences.count {
//    var tempAns = 0
//    for j in sentences[i] {
//        if j == " " {
//            tempAns += 1
//        }
//    }
//    if tempAns > ans {
//        ans = tempAns
//    }
//}
//print(ans + 1)
