import UIKit

var n = 12

// FIRST

var count = 0
for i in 1...n {
    if n % i == 0{
        count += 1
    } else {
        continue
    }
}
if count == 3 {
    print(true)
} else {
    print(false)
}


