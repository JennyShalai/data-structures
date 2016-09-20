//: Playground - noun: a place where people can play

import UIKit
import Foundation



var shoppingList: [String] = ["Bread", "Butter", "Cheese", "Lettuce", "Tomatoes"]

// access element
let secondItem = shoppingList[1]

// add element
shoppingList.append("Milk")
shoppingList[2] = "Ham"
shoppingList.insert("Eggs", atIndex: 4)

// delete element
shoppingList.removeAtIndex(1)
shoppingList.removeLast()
let lastElement = shoppingList.popLast() // remove last and return it, if no last - return nil
shoppingList.removeAll()
let noLastElement = shoppingList.popLast()





var newShoppingList: [String] = ["Bread", "Butter", "Cheese", "Lettuce", "Tomatoes"]

// iterating
for item in newShoppingList {
    print("\(item)")
}

for (index, item) in newShoppingList.enumerate() {
    print("Index: \(index), item: \(item)")
}

// count elements
let howMany: Int = newShoppingList.count

// find element
let element = "Butter"
if newShoppingList.contains(element) {
    print("already in the shopping list")
}