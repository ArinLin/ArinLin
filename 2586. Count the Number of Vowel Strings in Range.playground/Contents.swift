import UIKit

var words = ["are","amy","u", "aaaaaa"]
var left = 0
var right = 3

// FIRST

//var vowels = "aeiou"
//var counter = 0

//for (i,word) in words.enumerated() {
//    if i >= left && i <= right {
//        var start = word[word.startIndex]
//        var end = word[word.index(before: word.endIndex)]
//        print(start)
//        print(end)
//        if vowels.contains(word[word.startIndex]) && vowels.contains(word[word.index(before: word.endIndex)]){
//            counter += 1
//        }
//    }
//}
//print(counter)

// SECOND

//var i = left
//while i <= right {
//    if vowels.contains(words[i][words[i].startIndex]) && vowels.contains(words[i][words[i].index(before: words[i].endIndex)]) {
//        counter += 1
//    }
//    i += 1
//}
//print(counter)


// THIRD

//var m = 0
//for i in left...right {
//    let c = words[i].first!
//    let d = words[i].last!
//    if (c == "a" || c == "e" || c == "i" || c == "o" || c == "u") && (d == "a" || d == "e" || d == "i" || d == "o" || d == "u") {
//        m += 1
//    }
//}
//print(m)

// FOURTH

let vowels: [Character] = ["a", "e", "i", "o", "u"]

var count = 0
for word in words[left...right] {
    if vowels.contains(word.first!) && vowels.contains(word.last!) {
        count += 1
    }
}

print(count)
