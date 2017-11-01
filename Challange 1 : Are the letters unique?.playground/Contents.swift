//: Playground - noun: a place where people can play

import UIKit

func challange1a(input: String)  -> Bool{
    
    var usedCharacters = [Character]()
    
    for letter in input.characters {
        
        if usedCharacters.contains(letter) {
            return false
        }
        usedCharacters.append(letter)
    }
    
    return true
}


challange1a(input: "AaA")