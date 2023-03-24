import UIKit

// 819. Most Common Word

var paragraph = "Bob hit a ball, the hit BALL flew far after it was hit."
var banned = ["hit", "a"]
var wordInParagraph = paragraph.lowercased().split(separator: " ")
for (i, word) in wordInParagraph.enumerated(){
    if word.contains(",") || word.contains("."){
        wordInParagraph[i].popLast()
    }
}
var dict: [String:Int] = [:]

for word in wordInParagraph{
    if !dict.keys.contains(String(word)) && !banned.contains(String(word)){
        dict.updateValue(1, forKey: String(word))
    }else if dict.keys.contains(String(word)){
        dict.updateValue(dict[String(word)]! + 1, forKey: String(word))
    }
}
print(dict)

print(dict.values.max()!)
var maxim = dict.values.max()
var res = dict.first(where: {$0.value == maxim})?.key
print(res!)












//var wordInParagraph = paragraph.lowercased().split(separator: " ")
//
//for (i, word) in wordInParagraph.enumerated(){
//    if word.contains(",") || word.contains("."){
//        wordInParagraph[i].popLast()
//    }
//}
//print(wordInParagraph)
//
//var wordInParagraphBan = wordInParagraph.filter({$0 != banned[0]})
//print(wordInParagraphBan)
//
//var dict: [String:Int] = [:]
//
//for word in wordInParagraphBan{
//    if dict.keys.contains(String(word)){
//        dict.updateValue(dict[String(word)]! + 1, forKey: String(word))
//    }else{
//        dict.updateValue(1, forKey: String(word))
//    }
//}
//print(dict)
//
////var res = dict.values.max()!
////print(dict)
//
////let key = dict.filter({$0.value == 2}).map({$0.key}).first
//
//let key = dict.first(where: {$0.value == 2})?.key
//print(key!)

