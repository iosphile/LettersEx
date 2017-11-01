
//: Playground - noun: a place where people can play

import UIKit


func onlyThreeDifferentLetters(first: String, second: String) -> Bool {
    
    // check two strings length is identical if not return false 
    
    guard first.characters.count == second.characters.count else {return false}
    
    let firstArray = Array(first.characters)
    let secondArray = Array(second.characters)
    var differences = 0
    
    for (index, letter) in firstArray.enumerated() {
        
        if (secondArray[index] != letter) {
            differences += 1
        }
        if differences >= 4 {
            return false
        }
        
        
    }
    return true
    
}

onlyThreeDifferentLetters(first: "anji", second: "anjk")