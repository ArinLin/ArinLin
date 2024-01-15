import Foundation

var grid = [[1,2,4],[3,3,1]] // Output: 8
var sum = 0

for i in 0..<grid.count {
    grid[i].sort(by: >)
}

print(grid)

for i in 0..<grid[0].count {
    var maximum = [Int]()
    for j in 0..<grid.count {
        maximum.append(grid[j][i])
    }
    sum += maximum.max()!
}

print(sum)


//var ans = intersection(nums1, nums2)
//print(ans)
