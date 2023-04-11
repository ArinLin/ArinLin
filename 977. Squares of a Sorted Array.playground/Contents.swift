import UIKit

var nums = [-4,-1,0,3,10]

// FIRST

var arr = [Int]()

var res = nums.map{$0 * $0}
print(res.sorted(by: <))

// SECOND

var ans = [Int]()
for n in nums {
    var m = n * n
    ans.append(m)
}
print(ans)

for i in 0..<ans.count - 1 {
    for j in i + 1..<ans.count {
        if ans[i] > ans[j] {
            ans.swapAt(i, j)
        }
    }
}
print(ans)


