import Foundation

//var accounts = [[1,5],[7,3],[3,5]] //Output: 10
var accounts = [[2,8,7],[7,1,3],[1,9,5]] //Output: 17

var maximum = 0

for sub in accounts {
    var customerSum = 0
    for element in sub {
        customerSum += element
        maximum = max(maximum, customerSum)
    }
}

print(maximum)


