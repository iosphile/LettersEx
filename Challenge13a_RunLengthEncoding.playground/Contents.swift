//: Playground - noun: a place where people can play

import UIKit


func runLength(input: String) -> String {
    
    var currentLetter: Character?
    var returnValue = ""
    var letterCount = 0
    
    for letter in input.characters {
        
        
        if letter == currentLetter {
            
            letterCount += 1
        } else {
            
            if let current = currentLetter {
                returnValue.appending("\(current)\(currentLetter)")
                
                
            }
            
            currentLetter = letter
            letterCount = 1
        }
        
        
    }
    
    if let current = currentLetter {
        
        
        returnValue.append("\(current)\(currentLetter)")
    }
    
    
    return returnValue
    
}

runLength(input: "abbccddeef")





func runLength_13b(input: String) -> String {
    
    var retrunValue = ""
    var letterCount = 0
    
    var letterArray = Array(input.characters)
    
    
    for i in 0..<letterArray.count {
        letterCount += 1
        
        if i + 1 == letterArray.count || letterArray[i] != letterArray[i + 1] {
            
            
            retrunValue += "\(letterArray[i])\(letterCount)"
            letterCount = 0
        }
        
        
    }
    
    return retrunValue
    
    
    
    
}
runLength_13b(input: "abbccddeef")



































