import UIKit

var matrix = [[1,5,9],[10,11,13],[12,13,15]]
var k = 8

// FIRST SOLUTION

var res = matrix.flatMap({$0}).sorted(by: <)
print(res[k-1])


// SECOND SOLUTION

func kthSmallest(_ matrix: [[Int]], _ k: Int) -> Int {
    var min = matrix.first!.first!
    var max = matrix.last!.last!
    var avg = (min + max) / 2

    while max > min {
        print(avg)
        let c = countLess(matrix, avg)
        print("c: \(c)")
        if c >= k {
            max = avg > 0 ? avg : avg - 1
        } else {
            min = avg > 0 ? avg + 1 : avg
        }
        avg = (min + max) / 2
    }

    return min
}

func countLess(_ matrix: [[Int]], _ val: Int) -> Int {
    // solve for val location in matrix and count vals along the way

    var m = 0
    var n = matrix[0].count - 1
    var count = 0

    while m < matrix.count && n >= 0 {
        if matrix[m][n] <= val {
            m += 1
            count += (n + 1)
        } else {
            n -= 1
        }
    }

    return count
}
