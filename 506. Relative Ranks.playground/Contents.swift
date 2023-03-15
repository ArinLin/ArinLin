import UIKit

var score = [10,3,8,9,4]
print(score)
var scoreSort = score.sorted(by: >)
print(scoreSort)


// FIRST SOLUTION

var dict: [Int:Int] = [:]

// key = num
// val = index

//for (index,num) in scoreSort.enumerated(){
//    dict.updateValue(index, forKey: num)      // можно использовать запись dict[num] = index, где d - dict_nam, num - key, index - value
//}
//
//print(dict)
//
//var res = [String]()
//for s in score{               // лучше использовать i в конструкциях типа for i in 0...n.count - 1, чтобы понимать, что это индексы
//    if dict[s] == 0{
//        res.append("Gold Medal")
//    }
//    else if dict[s] == 1{
//        res.append("Silver Medal")
//    }
//    else if dict[s] == 2{
//        res.append("Bronze Medal")
//    }
//    else{
//        var x = dict[s]!+1
//        res.append(String(x))
//    }
//}
//print(res)

// SECOND

let sortedScore = score.sorted(by: >)
var scoreRank = [Int: String]()
for i in 0 ..< sortedScore.count {
    
    let ss = sortedScore[i]
    
    let rank: String
    switch i {
    case 0:
        rank = "Gold Medal"
    case 1:
        rank = "Silver Medal"
    case 2:
        rank = "Bronze Medal"
    default:
        rank = "\(i + 1)"
    }
    scoreRank[ss] = rank
//    scoreRank.updateValue(rank, forKey: ss)
}
        
var ranks = [String]()
for i in 0 ..< score.count {
    let s = score[i]
    let rank = scoreRank[s]!
    ranks.append(rank)
}
print(ranks)




