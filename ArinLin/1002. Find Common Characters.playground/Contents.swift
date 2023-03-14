import UIKit
// 1002. Find Common Characters

var words = ["bella","label","roller","lella","leam"]
var emptyArr = Array<Character>()

for char in words[0]{
    emptyArr.append(char)
}
print(emptyArr)
var intersec = Array<Character>()

for char in words[1]{
    if emptyArr.contains(char){
        intersec.append(char)
        words[1].remove(at: words[1].firstIndex(of: char)!)
    }
}
print(intersec)

var res = Array<Character>()
for word in words[2...]{
    var w = word
    if intersec.count > 0{
        for char in intersec{
            if !w.contains(char){
                intersec.remove(at: intersec.firstIndex(of: char)!)
            }else if w.contains(char){
                w.remove(at: w.firstIndex(of: char)!)
            }
        }
    }
}
print(intersec)
