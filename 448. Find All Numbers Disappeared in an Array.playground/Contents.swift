import Foundation

var nums = [4,3,2,7,8,2,3,1]
// Output: [5,6]

var res = [Int]()

func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
    var dict: [Int:Int] = [:]
    
    for n in nums {
        if let d = dict[n] {
            dict[n] = d + 1
        } else {
            dict[n] = 1
        }
    }
    
    for v in 1...nums.count {
        if dict[v] == nil {
            res.append(v)
        }
    }
    
    return res
}

print(findDisappearedNumbers(nums))

