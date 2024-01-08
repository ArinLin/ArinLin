import Foundation

//var s = "string"
// Output: "rtsng"
var s = "stringlkkipsnnsi"

//var ss = Array(s)
//var target = "i"
//var newString = ""
//
//var stack = [Character]()
//
//for ch in ss {
//    if String(ch) != target {
//        stack.append(ch)
//    } else {
//        newString += String(stack.reversed())
//        stack = [Character]()
//    }
//}
//
//newString += String(stack.reversed())
//
//print(newString)

// SOLUTION

func finalString(_ s: String) -> String {
    var result = ""

    for char in s {
        if char == "i" {
            result = String(result.reversed())
        } else {
            result.append(char)
        }
    }

    return result
}

var ans = finalString(s)
print(ans)
