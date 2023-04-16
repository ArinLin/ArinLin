import UIKit

var s = "ab##"
var t = "c#d"

var sStack = [String]()
var tStack = [String]()


for w in Array(s) {
    if w == "#" {
        sStack.popLast()
    } else {
        sStack.append(String(w))
    }
}
print(sStack)

for n in Array(t) {
    if n == "#" {
        tStack.popLast()
    } else {
        tStack.append(String(n))
    }
}
print(tStack)

if sStack.joined() == tStack.joined() {
    print(true)
} else {
    print(false)
}


// FUNC SOLUTION

func backspaceCompare(_ s: String, _ t: String) -> Bool {
    let stackA = generateStack(from: s)
    let stackB = generateStack(from: t)
    return stackA == stackB
}

private func generateStack(from string: String) -> [Character] {
    var stack = [Character]()

    for char in string {
        if char == "#" {
            stack.popLast()
        } else {
            stack.append(char)
        }
    }
    return stack
}
