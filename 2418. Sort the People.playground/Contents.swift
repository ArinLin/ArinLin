import UIKit

var names = ["Mary","John","Emma"]
var heights = [180,165,170]

var dict: [Int:String] = [:]
for (index,height) in heights.enumerated() {
dict[height] = names[index]
}

// sort Dictionary by KEYS

let sortedH = dict.sorted( by: { $0.0 > $1.0 })
print(sortedH.map({ $0.value }))

// sort Dictionary by VALUES

// let sortedHeight = dict.sorted( by: { $0.1 > $1.1 })
// print(sortedHeight.map({ $0.key }))



// SECOND SOLUTION

func sortPeople(_ names: [String], _ heights: [Int]) -> [String] {
   names
        .indices
        .sorted { heights[$0] > heights[$1] }
        .map { names[$0] }
}
