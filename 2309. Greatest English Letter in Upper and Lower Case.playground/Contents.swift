import UIKit

var s = "arRAzFif"

func greatestLetter(_ s: String) -> String {
    var arr = Array(s).map{String($0)}
    var res = [String]()

    for n in arr {
        if arr.contains(n.uppercased()) && arr.contains(n.lowercased()) {
            res.append(n)
        }
    }

    if res.count == 0 {
        return ""
    }

    return res.sorted().last!.uppercased()
}

// SECOND SOLUTION

//func greatestLetter(_ s: String) -> String {
//
//    var myDict = [Character: Bool]()
//    for char in "abcdefghijklmnopqrstuvwxyzQWERTYUIOPASDFGHJKLZXCVBNM" {
//        myDict[char] = false
//    }
//    let reversedS = String(s.sorted(by: { $0 > $1 }))
//    print(reversedS)
//
//    for i in reversedS {
//        var upper = Character(String(i).uppercased())
//        var lower = Character(String(i).lowercased())
//
//        if myDict[upper] == myDict[i] && myDict[lower] == true {
//            return String(upper)
//        }
//        myDict[i] = true
//        // myDict[j] = true
//        print("F"<"R")
//    }
//        return ""
//}

// THIRD SOLUTION (FASTEST)

//func greatestLetter(_ s: String) -> String {
//    var letters = Array(repeating: 0, count: 26)
//    for ch in s.unicodeScalars {
//        let asc = Int(ch.value)
//        if asc >= 97 { letters[asc - 97] |= 1 }
//        else { letters[asc - 65] |= 2 }
//    }
//    let last = letters.lastIndex(of: 3)
//    return last == nil ? "" : String(UnicodeScalar(UInt8(last! + 65)))
//}

