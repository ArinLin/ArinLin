import UIKit

var paths = [["London","New York"],["New York","Lima"],["Lima","Sao Paulo"]]

var dict: [String:String] = [:]
for path in paths{
    dict[path[0]] = path[1]
}


for val in dict.values{
    if dict[val] == nil{
        print(val)
    }
}

// or

for city in dict.values {
    if !dict.keys.contains(city) {
        print(city)
    }
}



// SECOND

//var outgoing = Set<String>()
//var ingoing = Set<String>()
//
//for path in paths {
//    outgoing.insert(path[0])
//    ingoing.insert(path[1])
//}
//
//for city in ingoing {
//    if !outgoing.contains(city) {
//        return city
//    }
//}
//
//return ""
