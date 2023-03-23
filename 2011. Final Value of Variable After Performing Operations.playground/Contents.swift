import UIKit

var operations = ["--X","X++","X++","++X"]
var X = 0

for n in operations {
    if n == "X++" || n == "++X" {
        X += 1
    } else if n == "--X" || n == "X--" {
        X -= 1
    }
}
print(X)
