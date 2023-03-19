import UIKit

var arr = ["d","b","c","b","c","a"]
var k = 2

// FIRST

//var dict: [String:Int] = [:]
//for symb in arr{
//    if let c = dict[symb]{
//        dict[symb] = c + 1
//    }else{
//        dict[symb] = 1
//    }
//}
//print(dict)
//// фильтруем символы, которые появляются в массиве один раз
//var dictFilte = dict.filter{$0.value == 1}.map{$0.key}
//print(dictFilte)
//
//var symbols = [String]()
//
//for (_, value) in arr.enumerated(){
//    if dictFilte.contains(value){
//        symbols.append(value) // чтобы знать в каком порядке символы расположены в изначальном массиве
//    }
//}
//print(symbols)
//
//if symbols.count < k{
//    print("dfvf")
//}else{
//    print(symbols[k - 1])
//}

// SECOND

var dictionary:[String:Int] = [:]
var result:[String] = []
        
for a in arr {
    if dictionary[a] != nil {
        dictionary[a]! += 1
    } else {
        dictionary[a] = 1
    }
}
        
for a in 0..<arr.count {
    if dictionary[arr[a]] == 1 {
        result.append(arr[a])
    }
}
        
print(result.count >= k ? result[k-1] : "")


// THIRD

var x = 0
var answer = ""
var string: [String: Int] = [:]
  
for i in 0..<arr.count {
    if var l = string[arr[i]] {
        string[arr[i]] = l + 1
    } else {
        string[arr[i]] = 1
    }
}
for i in 0..<arr.count {
    if string[arr[i]]! == 1 {
        x = x + 1
        if x == k {
            answer = arr[i]
        }
    }
}
  
print(answer)
