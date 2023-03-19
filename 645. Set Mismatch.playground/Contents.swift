import UIKit
// Find the number that occurs twice and the number that is missing and return them in the form of an array.

var nums = [3,2,3,4,6,5]

var new: [Int] = []
var doubleNum = 0
for i in nums {
    if new.contains(i){
        doubleNum = i
    }else{
        new.append(i)
    }
}
print(doubleNum)

var missing = 0
for n in 1...nums.count{
    if !new.contains(n){
        missing = n
        break
    }
}
print(missing)
