import UIKit

var command = "G()()()()(al)"

// FIRST

//var commandArr = Array(command)
//var res = [String]()

//for (i,w) in commandArr.enumerated() {
//    if w == "G" {
//        res.append(String(w))
//    } else if commandArr[i] == "(" && commandArr[i + 1] == ")" {
//        res.append("o")
//    } else if String(commandArr[i]) == "(" && String(commandArr[i + 1]) == "a" && String(commandArr[i + 2]) == "l" && String(commandArr[i + 3]) == ")"{
//        res.append("al")
//    }
//}
//print(res.map{String($0)}.joined())

// SECOND

var ans = command.replacingOccurrences(of: "()", with: "o").replacingOccurrences(of: "(al)", with: "al")
print(ans)
