import UIKit

var address = "1.1.1.1"

// FIRST
//address.replace(".",with: "[.]")

// SECOND
var s = address.split(separator: ".").joined(separator: "[.]")

// THIRD
//var ans = address.replacingOccurrences(of: ".", with: "[.]")

print(s)
