import UIKit

var pattern = "abba"
var s = "dog cat cat dog"

var sSplit = s.split(separator: " ")
var dict: [Character:String] = [:]
var flag = true
if sSplit.count != pattern.count{
    print(false)
} else {
    for (i, charact) in pattern.enumerated(){
        if dict.keys.contains(charact){
            if dict[charact]! != sSplit[i]{
                flag = false
            }
        }else{
            if dict.values.contains(String(sSplit[i])){
                flag = false
            }else{
                dict.updateValue(String(sSplit[i]), forKey: charact)
            }
        }
    }
}
print(flag)

print(sSplit.count)
