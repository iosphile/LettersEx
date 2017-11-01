//: Playground - noun: a place where people can play

import Foundation

func givenStringIsPalindromeOrNot(input: String) -> Bool{
    let lowercase = input.lowercased()
    return lowercase.characters.reversed() == Array(lowercase.characters)
}

givenStringIsPalindromeOrNot(input: "12123")