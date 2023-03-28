import UIKit

var words = ["abc","car","ada","racecar","cool"]

for word in words {
    var rev = String(word.reversed())
    if rev == word {
        print(word)
        break
    }
}


