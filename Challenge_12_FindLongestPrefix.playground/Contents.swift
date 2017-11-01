//: Playground - noun: a place where people can play

import UIKit

func findLongestPrefix(input: String) -> String {
    
    let parts = input.components(separatedBy: " ")
    
    guard  let first = parts.first else {return ""}
    
    var currentPrefix = ""
    var bestPrefix = ""
    
    for letter in first.characters {
        
        currentPrefix.append(letter)
        
        for word in parts {
            
            if !word.hasPrefix(currentPrefix) {
                return bestPrefix
            }
        }
        
        bestPrefix = currentPrefix
    }
    
    
    return bestPrefix
}

findLongestPrefix(input: "swi swiiiii hi hi hi hi hi")