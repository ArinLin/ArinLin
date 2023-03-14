import UIKit

var list1 = ["Shogun","Tapioca Express","Burger King","KFC"]
var list2 = ["Tapioca Express","Shogun","KFC", "Burger King"]

var dict: [String: Int] = [:]

for (index, word) in list1.enumerated() {
    if list2.contains(word) {
        dict.updateValue(index, forKey: word)
    }
}
for (index, word) in list2.enumerated() {
    if dict.keys.contains(word){
        dict.updateValue(index + dict[word]!, forKey: word)
    }
}

print(dict)


var minValue = dict.values.min()!

print(minValue)
// отфильтровать словарь, где значение == минимальной величине, и вывести ключ по значению
var minKey = dict.first(where: { $0.value == minValue })?.key

print(minKey!)
// вывести все значения, равные минимальной величине
var res = dict.filter{$0.value == minValue}.map{$0.key}
print(res)
//var res = dict.filter({$0.value == minValue}).map{$0.key}
