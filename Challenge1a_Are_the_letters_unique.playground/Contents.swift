//: Playground - noun: a place where people can play

import Foundation

//This has performance issue
func challange1aWithLoop(input: String)  -> Bool{
    
    var usedCharacters = [Character]()
    
    for letter in input.characters {
        
        if usedCharacters.contains(letter) {
            print("contained duplicates \(letter)")
            return false
        }
        usedCharacters.append(letter)
    }
    
    return true
}
//This works better
func challenge1aWithSet(input: String) -> Bool {
    return Set(input.characters).count == (input.characters).count
}
challenge1aWithSet(input: "AaA")
