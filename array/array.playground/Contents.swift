//: Playground - noun: a place where people can play

import UIKit
import Foundation

/////////////////////   BASIC   ////////////////////////////

var shoppingList: [String] = ["Bread", "Butter", "Cheese", "Lettuce", "Tomatoes"]

// access element
let secondItem = shoppingList[1]

// add element
shoppingList.append("Milk")
shoppingList[2] = "Ham"
shoppingList.insert("Eggs", at: 4)

// delete element
shoppingList.remove(at: 1)
shoppingList.removeLast()
let lastElement = shoppingList.popLast() // remove last and return it, if no last - return nil
shoppingList.removeAll()
let noLastElement = shoppingList.popLast()


//////////////////////   ITERATING   ////////////////////////


var newShoppingList: [String] = ["Bread", "Butter", "Cheese", "Lettuce", "Tomatoes"]

// iterating
for item in newShoppingList {
    print("\(item)")
}

for (index, item) in newShoppingList.enumerated() {
    print("Index: \(index), item: \(item)")
}

// count elements
let howMany: Int = newShoppingList.count

// find element
let element = "Butter"
if newShoppingList.contains(element) {
    print("already in the shopping list")
}

///////////////////////   is element in array   /////////////////////////


func findElem(array:[String], element: String) -> Bool {
    for elem in array {
        if elem == element {
            return true
        }
    }
    return false
}

//////////////////////   SORT with MERGE   ///////////////////////

let numbers = [4,6,2,11,7,9,8]



func mergeArrays(firstArray: [Int], secondArray: [Int]) -> [Int] {
    
    var currentFirstIndex = 0
    var currentSecondIndex = 0
    var result: [Int] = []
    
    while(currentFirstIndex < firstArray.count && currentSecondIndex < secondArray.count){
        // compare two array elements before merge
        if firstArray[currentFirstIndex] > secondArray[currentSecondIndex] {
        
            // add smaller number to result array
            result.append(secondArray[currentSecondIndex])
        
            //move pointer to the next element of second array
            currentSecondIndex += 1
        } else {
            result.append(firstArray[currentFirstIndex])
            
            //move pointer to the next element first array
            currentFirstIndex += 1
        }
    }

    for index in currentFirstIndex..<firstArray.count {
        result.append(firstArray[index])
    }
    
    for index in currentSecondIndex..<secondArray.count {
        result.append(secondArray[index])
    }
    
    return result
}

func sortArray(input:[Int]) -> [Int] {
    var array = input
    let middle = array.count / 2
    let leftSubArray: [Int] = Array(array[0..<middle])
    let rightSubArray: [Int] = Array(array[middle...array.count - 1])
    print(leftSubArray)
    print(rightSubArray)
    if leftSubArray.count > 1 {
        sortArray(input: leftSubArray)
        //mergeArray()
    }
    if rightSubArray.count > 1 {
        sortArray(input: rightSubArray)
    }
    
    
    
    
    
    return [0]
}

let result = sortArray(input: numbers)




