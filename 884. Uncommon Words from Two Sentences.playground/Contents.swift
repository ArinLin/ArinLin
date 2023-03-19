import UIKit

var s1 = "mqk g g"
var s2 = "uuz rk uuz"

var str = s1 + " " + s2
var strSplit = str.split(separator: " ")
var dict: [String:Int] = [:]
for word in strSplit{
    if dict[String(word)] != nil {
        dict[String(word)] = dict[String(word)]! + 1
    }else{
        dict[String(word)] = 1
    }
}
print(dict)
// фильтруем значения, которые равны 1
var filterDict = dict.filter{$0.value == 1}.map{$0.key}
print(filterDict)
