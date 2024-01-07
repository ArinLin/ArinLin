import Foundation

var s = "()[]{}"
// Output: true
//Input: s = "(]"
//Output: false

//func isValid(_ s: String) -> Bool {
//    guard s.count % 2 == 0 else { return false }
//    
//    var stack: [Character] = []
//    
//    for ch in s {
//        switch ch {
//        case "(": stack.append(")")
//        case "[": stack.append("]")
//        case "{": stack.append("}")
//        default:
//            if stack.isEmpty || stack.removeLast() != ch {
//                return false
//            }
//        }
//    }
//    
//    return stack.isEmpty
//}


func isValid(_ s: String) -> Bool {
    var stack: [Character] = [], valid = true
    
    for ch in s {
        if ch == "{" ||  ch == "(" ||  ch == "[" {
            stack.append(ch)
        } else {
            switch ch {
                case "}": valid = stack.popLast() == "{"
                case ")": valid = stack.popLast() == "("
                case "]": valid = stack.popLast() == "["
                default: valid = false
            }
        }
        
        if valid == false { return false }
    }
    
    if stack.count > 0 { return false }
    return valid
}

var ans = isValid(s)
print(ans)
