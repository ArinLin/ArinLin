import UIKit

var patterns = ["a","a","a"]
var word = "ab"
var counter = 0

for words in patterns {
    if word.contains(words) {
        counter += 1
    }
}
print(counter)
