//: Playground - noun: a place where people can play

import UIKit

var string = "hello"

let uppercase = string.uppercased() // "HELLO"
let lowercase = string.lowercased() // "hello"
let capitalize = string.capitalized // "Hello"


string.append("!")  // "Hello!"
string += "!"       // "Hello!!"

let number = string.characters.count    // 7

let array = Array(string.characters)    // ["h", "e", "l", "l", "o", "!", "!"]

//////////////////  LOOPS ///////////////////////////////

for char in string.characters {
    print(char)
}

// h
// e
// l
// l
// o
// !
// !

for (index, char) in string.characters.enumerated() {
    print("\(index) \(char)")
}

// 0 h
// 1 e
// 2 l
// 3 l
// 4 o
// 5 !
// 6 !

//////////////////////////////////////////////////////////


let isThere = string.contains("!!") // true

let lastCharacter = string.characters.last!         // ! ->> hello!!
let lastAndDelete = string.characters.popLast()     // ! ->> hello!
let firstCharacter = string.characters.first!       // h ->> hello!
let firstAndDelete = string.characters.popFirst()   // h ->> ello!


/////////////////////  INSERTING  /////////////////////////////

string = "Welcome"

string.insert("!", at: string.endIndex)                     // Welcome!
string.insert("-", at: string.characters.index(of: "!")!)   // Welcome-!

let idx = string.index(string.startIndex, offsetBy: 8)      // skip 8 chars from the beginning of the string
string.insert(contentsOf: "home".characters, at: idx)       // Welcome-home!


///////////////////////////////////////////////////////////////




