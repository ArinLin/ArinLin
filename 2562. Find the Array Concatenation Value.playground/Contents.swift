import Foundation

//var nums = [7,52,2,4] // Output 596
var nums = [5,14,13,8,12] // Output: 673


func findTheArrayConcVal(_ nums: [Int]) -> Int {
    if nums.isEmpty { return 0 }
    var numsString = [String]()
    var sum = 0
    var left = 0, right = nums.count - 1
    
    for num in nums {
        numsString.append(String(num))
    }
    
    var conceteNums = [String]()
    while left < right {
        conceteNums.append(numsString[left] + numsString[right])
        left += 1
        right -= 1
    }
    
    if numsString.count % 2 != 0 {
        conceteNums.append(numsString[numsString.count / 2])
    }
    
    for num in conceteNums {
        sum += Int(num)!
    }
    
    return sum
}

var ans = findTheArrayConcVal(nums)
print(ans)
