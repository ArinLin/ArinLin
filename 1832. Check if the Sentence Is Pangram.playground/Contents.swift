import Foundation

var sentence = "thequickbrownfoxjumpsoverthelazydog"

func checkIfPangram(_ sentence: String) -> Bool {
    var a = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
    var dict: [String:Int] = [:]
    
    for ch in a {
        if let d = dict[ch] {
            dict[ch] = d + 1
        } else {
            dict[ch] = 1
        }
    }
    
    for ch in Array(sentence) {
        if let d = dict[String(ch)] {
            dict[String(ch)] = d + 1
        } else {
            dict[String(ch)] = 1
        }
    }
    
    for i in dict.values {
        if i == 1 {
            return false
        }
    }
    
    return true
}
var ans = checkIfPangram(_: sentence)
print(ans)
