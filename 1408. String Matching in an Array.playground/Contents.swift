import Foundation

var words = ["mass","as","hero","superhero"]
// Output: ["as","hero"]

func stringMatching(_ words: [String]) -> [String] {
    var res = [String]()
    
    for i in 0..<words.count {
        for j in 0..<words.count {
            if i == j {
                continue
            }
            if words[j].contains(words[i]) {
                res.append(words[i])
                break
            }
        }
    }
    
    return res
}


var ans = stringMatching(words)
print(ans)
