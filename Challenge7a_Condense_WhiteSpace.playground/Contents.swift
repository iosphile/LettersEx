//: Playground - noun: a place where people can play

import UIKit

func condenceWhiteSpace(input: String) -> String {
    
    let components = input.components(separatedBy: .whitespacesAndNewlines)
    
    return components.filter{!$0.isEmpty}.joined(separator: "")
    
}

condenceWhiteSpace(input: "     a  b  c")

func condenceWhiteSpace_7a(input: String) -> String {
    
    var seenSpace = false
    var returnValue = ""
    
    for letter in input.characters {
        
        if letter == " " {
            if seenSpace {continue}
            seenSpace = true
        }
        else {
            seenSpace = false
        }
        returnValue.append(letter)
    }
    return returnValue
    
}

condenceWhiteSpace_7a(input: "   a  b  c")

func condenceWhiteSpace_7b(input: String)-> String {

return input.replacingOccurrences(of: " +", with: "", options: .regularExpression, range: nil)
}

condenceWhiteSpace_7b(input: "   a  b  c")