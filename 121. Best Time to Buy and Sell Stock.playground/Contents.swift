import UIKit

var prices = [23,6,11,2,10,1,3]

// FIRST

//var bestPrice = prices.max()!
//var income = 0
//
//for price in prices{
//    if price < bestPrice{
//        bestPrice = price
//    }else if price - bestPrice > income{
//        income = price - bestPrice
//    }
//}
//print(income)

// SECOND
var lowPrice = prices.max()!
var income = 0

for price in prices{
    lowPrice = min(lowPrice,price)
    income = max(income, price - lowPrice)
}
print(income)
