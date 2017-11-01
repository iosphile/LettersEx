//: Playground - noun: a place where people can play

import Foundation

func compareTwoStrings(firstString: String, secondString: String) -> Bool {
    var checkString = secondString
    
    for letter in firstString.characters {
        
        if let index = checkString.characters.index(of: letter) {
            
            checkString.characters.remove(at: index)
        }
        else {
        return false
        }
    }
    
    return checkString.characters.count == 0
    
}

//compareTwoStrings(firstString: "London", secondString: "UK")t

func compareTwoStrings_PerfectWay(firstString: String, secondString: String) -> Bool {
    
    let firstStringArray = Array(firstString.characters)
    let secondStringArray = Array(secondString.characters)
    
    return firstStringArray.count == secondStringArray.count && firstStringArray.sorted() == secondStringArray.sorted()
}

compareTwoStrings_PerfectWay(firstString: "stringS", secondString: "string")