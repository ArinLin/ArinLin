import UIKit

var s = "abbaca"

// FIRST

//for symb in s {
//    if stack.last == symb {
//        stack.removeLast()
//    } else {
//        stack.append(symb)
//    }
//}
//return stack

// SECOND

var stack = [Character]()

for char in s {
    if let lastChar = stack.last {
        if lastChar == char {
            stack.removeLast()
        } else {
            stack.append(char)
        }
    } else {
        stack.append(char)
    }
}
print(String(stack))


