import UIKit

var s = "er*a*sck**h*d"

// STACK SOLUTION

var stack = [Character]()
        
for c in s {
    if(c == "*") {
        stack.popLast()
    } else {
        stack.append(c)
    }
}

print(String(stack))

// SECOND SOLUTION

while s.contains("*") && s.count > 0 {
    var ind = s.firstIndex(of: "*")!
    var secondInd = s.index(before: ind)
    s.remove(at: ind)
    s.remove(at: secondInd)
}

print(s)
