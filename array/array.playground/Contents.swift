//: Playground - noun: a place where people can play

import UIKit
import Foundation

/////////////////////   BASIC   ////////////////////////////

var shoppingList: [String] = ["Bread", "Butter", "Cheese", "Lettuce", "Tomatoes"]

// access element
let secondItem = shoppingList[1]    // "Butter"

// add element
shoppingList.append("Milk")         // ["Bread", "Butter", "Cheese", "Lettuce", "Tomatoes", "Milk"]
shoppingList[2] = "Ham"             // ["Bread", "Butter", "Ham", "Lettuce", "Tomatoes", "Milk"]
shoppingList.insert("Eggs", at: 4)  // ["Bread", "Butter", "Ham", "Lettuce", "Eggs", "Tomatoes", "Milk"]


// delete element
shoppingList.remove(at: 1)               // will remove "Butter"
shoppingList.removeLast()                // will remove "Milk"
let lastElement = shoppingList.popLast() // "Tomatoes" // remove last and return it, if no last - return nil
shoppingList.removeAll()                 // []
let noLastElement = shoppingList.popLast() // nil


//////////////////////   ITERATING   ////////////////////////


var newShoppingList: [String] = ["Bread", "Butter", "Cheese", "Lettuce", "Tomatoes"]

//// iterating
for item in newShoppingList {
    print("\(item)")
}
// Bread
// Butter
// Cheese
// Lettuce
// Tomatoes


//// intrating with stride
for index in stride(from: 0, to: newShoppingList.count, by: 2) {
    print(newShoppingList[index])
}
// Bread
// Cheese
// Tomatoes


//// access in index and value
for (index, item) in newShoppingList.enumerated() {
    print("Index: \(index), item: \(item)")
}
// Index: 0, item: Bread
// Index: 1, item: Butter
// Index: 2, item: Cheese
// Index: 3, item: Lettuce
// Index: 4, item: Tomatoes


// count elements
let howMany: Int = newShoppingList.count    // 5

// find element
let element = "Butter"
if newShoppingList.contains(element) {
    print("already in the shopping list")
}

///////////////////////   is element in array   ////////   O(n)   /////////////////

func findElem(array:[String], element: String) -> Bool {
    for elem in array {
        if elem == element {
            return true
        }
    }
    return false
}

//////////////////////   SORT with BUBBLE   ///////////   O(n2)   /////////////////

func bubbleSort(input: [Int]) -> [Int] {
    
    var items: [Int] = input
    var swapped = false
    
    repeat {
        swapped = false
        for i in 1..<items.count {
            if items[i-1] > items[i] {
                let tmp = items[i-1]
                items [i-1] = items[i]
                items[i] = tmp
                swapped = true
            }
        }
    } while swapped
    
    return items
}

var array:[Int] = [1, 5, 2, 8, 45, 2]               // items to be sorted
print("Before sorting: \(array)")                   // [1, 5, 2, 8, 45, 2]
print("After sorting: \(bubbleSort(input:array))")  // [1, 2, 2, 5, 8, 45]



//////////////////////   SORT with SELECTION   ///////////   O(n2)   /////////////////

func selectSort(input: [Int]) -> [Int] {
    
    var result: [Int] = input
    
    
    if result.count <= 1 {
        return result
    } else {
        //for each element
        for i in 0..<result.count {
            
            // assume first element is the lowest
            // remember it's possition
            var lowestIndex = i
            
            // go through all array and check is there any element
            // lower than first element
            for j in i+1..<result.count {
                if result[j] < result[lowestIndex] {
                    lowestIndex = j
                }
            }
            
            // if new lowest element was found
            // swap that lowest with current
            if i != lowestIndex {
                swap(&result[i], &result[lowestIndex])
            }
        }
    }
    return result
}

var array2:[Int] = [1, 5, 2, 8, 45, 2]               // items to be sorted
print("Before sorting: \(array)")                   // [1, 5, 2, 8, 45, 2]
print("After sorting: \(selectSort(input:array))")  // [1, 2, 2, 5, 8, 45]



//////////////////////   SORT with MERGE   ///////////   O(n*logN)   //////////////

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
    var leftSubArray: [Int] = Array(array[0..<middle])
    var rightSubArray: [Int] = Array(array[middle...array.count - 1])
    
    if leftSubArray.count > 1 {
        leftSubArray = sortArray(input: leftSubArray)
    }
    if rightSubArray.count > 1 {
        rightSubArray = sortArray(input: rightSubArray)
        
    }
    return mergeArrays(firstArray: leftSubArray, secondArray: rightSubArray)
}

let numbers = [4,6,2,11,7,9,8]
let result = sortArray(input: numbers)  // [2, 4, 6, 7, 8, 9, 11]




