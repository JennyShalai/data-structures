//: Playground - noun: a place where people can play

import UIKit


func findElemInSortedArray(sortedArray:[Int], element: Int) -> Bool {
    
    if sortedArray.count == 0 {
        return false
    }
    
    let middle = sortedArray[sortedArray.count / 2]
    if middle == element {
        return true
    } else if middle > element {
        return findElemInSortedArray(Array(sortedArray[0..<sortedArray.count/2]), element: element)
    } else {
        return findElemInSortedArray(Array(sortedArray[sortedArray.count/2 + 1..<sortedArray.count]), element: element)
    }
}


print(findElemInSortedArray([1], element: 3))

[1, 2, 3, 8, 9]
