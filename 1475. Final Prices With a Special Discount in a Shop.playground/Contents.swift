import UIKit

var prices = [8,4,6,2,3]

// FIRST SOLUTION

var pricesWithDiscount = [Int]()

for i in 0..<prices.count - 1 {
    var curDiscont = 0
    for j in i + 1..<prices.count {
        if prices[i] >= prices[j] {
            curDiscont = prices[j]
            break
        }
    }
    pricesWithDiscount.append(prices[i] - curDiscont)
}

pricesWithDiscount.append(prices.last!)


//for i in 0..<prices.count - 1 {
//    var currentPrice = prices[i]
//    var currentDiscount = 0
//    for j in i + 1..<prices.count {
//        if currentPrice >= prices[j] {
//            currentDiscount = prices[j]
//            break
//        }
//    }
//    pricesWithDiscount.append(currentPrice - currentDiscount)
//}
//
//pricesWithDiscount.append(prices.last!)

print(pricesWithDiscount)

