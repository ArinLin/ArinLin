import UIKit

var word = "abcdefd"
var ch = "d"

// FIRST

//guard var index = word.firstIndex(of: ch)?.encodedOffset else { return word }
//var word = Array(word)
//var p1 = 0
//var p2 = index
//
//while p1 < p2 {
//    word.swapAt(p1, p2)
//    p1 += 1
//    p2 -= 1
//}
//
//return String(word)


// SECOND
guard word.contains(ch) else {return word}

var first = 0
var arr = Array(word)

for (i,v) in arr.enumerated() {
    if String(v) == ch {
        first = i
        break
    }
}

var rev = [String]()
for v in 0...first {
    rev.append(String(arr[v]))
}

var tail = [String]()
for v in first+1..<arr.count {
    tail.append(String(arr[v]))
}

var res = rev.reversed().joined() + tail.joined()
return res


// THIRD

if let selectedIndex = word.firstIndex(of: ch) {
    let reversedStr = String(word[...selectedIndex].reversed())
    let suffixStr = word.suffix(from: word.index(selectedIndex, offsetBy: 1))
    print(reversedStr + suffixStr)
}
return word
