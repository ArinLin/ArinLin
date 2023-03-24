import UIKit

var s = "is2 sentence4 This1 a3"

// FIRST

var sArr = s.split(separator: " ")
var normal = [String]()
var count = sArr.count

for n in 1...count {
    for i in sArr {
        if i.contains(String(n)) {
            normal.insert(String(i), at: n - 1)
        }
    }
}

normal = normal.map { word in
    let filteredWords = word.filter { char in
        !char.isNumber
    }
    return filteredWords
}

let result = normal.joined(separator: " ")


print(normal)
print(result)

// SECOND

//s.split(separator: " ").sorted(by: { $0.last! < $1.last! }).map({ $0.dropLast() }).joined(separator: " ")
