import UIKit

var nums = ["111","011","001"]

var intNum = 0
var arr: [Int] = []
var lenght = nums[0].count
for num in nums {
    intNum = Int(num, radix: 2)!
    arr.append(intNum)
}

print(intNum)
print(arr)

var arrOfI: [Int] = []

for i in 0...arr.max()! + 1{
    arrOfI.append(i)
}
print(arrOfI)

var arrStr: [String] = []
var strNum = ""
for num in arrOfI{
    strNum = String(num, radix: 2)
    while strNum.count < lenght{
        strNum.insert("0", at: strNum.startIndex)
    }
    arrStr.append(strNum)
}
print(arrStr)


var numToFind = ""
for n in arrStr{
    if nums.contains(n){
        continue
    }else{
        numToFind = n
        break
    }
}
print(numToFind)
