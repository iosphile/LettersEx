//: Playground - noun: a place where people can play

import UIKit

func countOfVowelsAndConsonantsInGivenString(input: String) -> (vowels: Int, consonants: Int) {
    
    let vowels = CharacterSet(charactersIn: "aeiou")
    let consonants = CharacterSet(charactersIn: "bcdefghijklmnopqrstuvwxyz")
    
    var vowelCount = 0
    var consonantCount = 0
    
    for letter in input.lowercased().characters {
        
        let stringLetter = String(letter)
        
        if stringLetter.rangeOfCharacter(from: vowels) != nil{
            vowelCount += 1
        }
        
        else if stringLetter.rangeOfCharacter(from: consonants) != nil{
            consonantCount += 1
        }
        
    }
    return (vowelCount, consonantCount)
    
    
}

countOfVowelsAndConsonantsInGivenString(input: "I do whatever you want")

func countOfVowelsAndConsonantsInGivenString_10b(input: String) -> (vowels: Int, consonants: Int) {
    
    let vowels = "aeiou"
    let consonants = "bcdefghijklmnopqrstuvwxyz"
    
    var vowelCount = 0
    var consonantCount = 0
    
    for letter in input.lowercased().characters {
        
        let stringLetter = String(letter)
        
        if vowels.contains(stringLetter){
            vowelCount += 1
        }
            
        else if consonants.contains(stringLetter){
            consonantCount += 1
        }
        
    }
    return (vowelCount, consonantCount)
    
    
}


countOfVowelsAndConsonantsInGivenString_10b(input: "Hi how are you mate?")





func countOfVowelsAndConsonantsInGivenString_10c(input: String) -> (vowels: Int, consonants: Int) {
    
    let vowels = "aeiou".characters
    let consonants = "bcdefghijklmnopqrstuvwxyz".characters
    
    var vowelCount = 0
    var consonantCount = 0
    
    for letter in input.lowercased().characters {
        
        
        
        if vowels.contains(letter){
            vowelCount += 1
        }
            
        else if consonants.contains(letter){
            consonantCount += 1
        }
        
    }
    return (vowelCount, consonantCount)
    
    
}
countOfVowelsAndConsonantsInGivenString_10c(input: "My name is ramesh.how are you mate?")
countOfVowelsAndConsonantsInGivenString_10c(input: "aeiou")












