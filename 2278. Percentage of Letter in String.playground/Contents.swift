import Foundation

var s = "foobar"
var letter = "o"
// Output: 33


func percentageLetter(_ s: String, _ letter: Character) -> Int {
    var ss = Array(s)
    var lenght = Array(s).count
    var counter = 0
    
    for ch in ss {
        if ch == letter {
            counter += 1
        }
    }
    
    var res = 0
    res = Int((counter * 100) / lenght)
    return res
}


var ans = percentageLetter(s, Character(letter))
print(ans)
