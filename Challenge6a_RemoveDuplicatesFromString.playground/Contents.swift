//: Playground - noun: a place where people can play

import UIKit

func removeDuplicateLettersFromGivenString(givenString: String) -> String {
 
    let array = givenString.characters.map{String($0)}
    
    let set = NSOrderedSet(array: array)
 
    let letters = Array(set) as! Array<String>
    
    return letters.joined()
    
}

//removeDuplicateLettersFromGivenString(givenString: "aaaj")func 


func removeDuplicateLettersFromGivenString_6b(givenString: String) -> String {
var usedCharacters = [Character]()
    
    for letter in givenString.characters {
        
        if !usedCharacters.contains(letter) {
            
            usedCharacters.append(letter)
        }
    }
   
    return String(usedCharacters)

}

//removeDuplicateLettersFromGivenString_6b(givenString: "hithis")


func removeDuplicateLettersFromGivenString_6c(givenString: String) -> String {
    var usedCharacters = [Character:Bool]()
    
    let result = givenString.characters.filter {
        usedCharacters.updateValue(true, forKey: $0) == nil
    }
    return String(result)
    
}



removeDuplicateLettersFromGivenString_6c(givenString: "hithis")







