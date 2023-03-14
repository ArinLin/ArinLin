import UIKit
// 2255. Count Prefixes of a Given String

//var words = ["a", "a"]
//var s = "aa"
//var count = 0
//
//for w in words{
//    if s.hasPrefix(w){
//        count += 1
//    }
//}
//print(count)

// 2185. Counting Words With a Given Prefix

//var words = ["pay","attention","practice","attend"]
//var pref = "at"
//var count = 0
//
//for w in words{
//    if w.hasPrefix(pref){
//        count += 1
//    }
//}
//print(count)

// 1455. Check If a Word Occurs As a Prefix of Any Word in a Sentence

//var sentence = "this problem is an easy problem"
//var searchWord = "pro"
//var senSpl = sentence.split(separator: " ")
//
//for word in senSpl{
//    if word.hasPrefix(searchWord){
//        print(senSpl.firstIndex(of: word)! + 1)
//        break
//    }
//}

// 1961. Check If String Is a Prefix of Array

//var s = "iloveleetcode"
//var words = ["i","love","leetcode","apples"]
//var flag = false
//var v = ""
//
//for word in words{
//    v += word
//    if v == s{
//        flag = true
//    }
//}
//print(flag)

// 1941. Check if All Characters Have Equal Number of Occurrences

var s = "abacbc"
var dict: [Character:Int] = [:]

for i in s{
    if let m = dict[i]{
        dict[i] = m + 1
    }else{
        dict[i] = 1
    }
}
print(dict)

if dict.values.max() == dict.values.min(){
    print(true)
}else{
    print(false)
}
