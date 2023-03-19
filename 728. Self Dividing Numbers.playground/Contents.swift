import UIKit

var left = 47
var right = 85
var arr = [Int]() // массив, в который записываем все числа, находящиеся между left и right
var res = [Int]() // результат

for i in left...right{
    arr.append(i)
}
print(arr)

// FIRST

for num in arr{
    var t = num
    while t > 0{
        var symb = t % 10
        if symb == 0 || num % symb != 0 {
            break
        }
        t = t / 10
    }
    if t == 0 {
        res.append(num)
    }
}
print(res)

// SECOND

//var stringArray = arr.map{ String($0) } // массив интов превращаем в массив стрингов
//print(stringArray)



//for i in stringArray{
//    if i.contains(String(0)){
//        stringArray.remove(at: stringArray.firstIndex(of: i)!)
//    }
//}
//print(stringArray)

//for n in stringArray{
//    var count = 0
//    for char in n{
//        if Int(String(n))! % Int(String(char))! != 0 || Int(String(char))! == 0{
//            break
//        }
//        count += 1
//        if count == n.count{
//            res.append(Int(String(n))!)
//        }
//    }
//}
//print(res)

