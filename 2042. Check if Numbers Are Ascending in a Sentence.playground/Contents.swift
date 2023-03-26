import UIKit

var s = "1 box has 3 blue 4 red 6 green and 12 yellow marbles"
var sSplit = s.split(separator: " ")
var nums = [String]()

for n in sSplit {
    if Int(String(n)) != nil {
        nums.append(String(n))
    }
}

print(nums)
// превращаю стринг в инт
var numsInt = nums.map {Int($0)!}

// делаю сет, чтобы избежать повторяющихся чисел
var setIntNums = Array(Set(numsInt))

// сортирую от меньшего к большему по условиям задачи
var numsSort = setIntNums.sorted(by: <)

print(numsInt)
print(setIntNums)
print(numsSort)

if numsInt == numsSort {
    print(true)
} else {
    print(false)
}

// SECOND

func areNumbersAscending(_ s: String) -> Bool {
    var arr = s.split(separator: " ")
    var currNum = Int.min
    
    for i in arr {
        if let i = Int(i) {
            if i <= currNum {
                return false
            }
            currNum = i
        }
    }
    
    return true
}
