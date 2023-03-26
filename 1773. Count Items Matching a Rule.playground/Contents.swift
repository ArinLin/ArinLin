import UIKit

var items = [["phone","blue","pixel"],["computer","silver","phone"],["phone","gold","iphone"],["computer","red","phone"],["toster","green","pixel"]]
var ruleKey = "name"
var ruleValue = "iphone"

// FIRST

var rule = 0
var counter = 0

switch ruleKey {
case "type":
    rule = 0
case "color":
    rule = 1
case "name":
    rule = 2
default:
    rule = 0
}

for item in items {
    if item[rule] == ruleValue {
        counter += 1
    }
}

print(counter)


// SECOND

var result = 0
if ruleKey == "type" {
    for i in 0..<items.count {
        if items[i][0] == ruleValue {
            result += 1
        }
    }
} else if ruleKey == "color" {
    for j in 0..<items.count {
        if items[j][1] == ruleValue {
            result += 1
        }
    }
} else if ruleKey == "name" {
    for l in 0..<items.count {
        if items[l][2] == ruleValue {
            result += 1
        }
    }
}
return result

// THIRD

//var index = 0
//var counter = 0
//
//if(ruleKey == "type") {
// index = 0
//}else if (ruleKey == "color") {
// index = 1
//}else {
// index = 2
//}
//
//for iter in items {
// if(iter[index] == ruleValue){
//     counter += 1
// }
//}
//
//return counter
//}
