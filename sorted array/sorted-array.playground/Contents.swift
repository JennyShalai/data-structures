//: Playground - noun: a place where people can play

import UIKit

///////////////////////////

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

///////////////////////////

func findElemIndex(sortedArray:[Int], element: Int) -> Int {
    
    if sortedArray.count == 0 {
        return -1
    }
    
    let middle = sortedArray[sortedArray.count / 2]
    if middle == element {
        return sortedArray.count / 2
    } else if middle > element {
        return findElemIndex(Array(sortedArray[0..<sortedArray.count/2]), element: element)
    } else {
        return findElemIndex(Array(sortedArray[sortedArray.count/2 + 1..<sortedArray.count]), element: element)
    }
}

///////////////////////////


func insertElement(sortedArray:[Int], element: Int) -> [Int] {
    
    if sortedArray.count == 0 {
        return [element]
    }
    
    var leftIndex = 0
    var rightIndex = sortedArray.count - 1
    var resultArray = sortedArray
    
    while true {
        let middleIndex = (rightIndex + leftIndex + 1) / 2
        let middleElem = sortedArray[middleIndex]
        if middleElem == element {
            return sortedArray
        } else if middleElem > element {
            rightIndex = middleIndex
        } else if middleElem < element {
            leftIndex = middleIndex
        }
        
        if rightIndex - leftIndex == 1 {
            resultArray.insert(element, atIndex: rightIndex)
            return resultArray
        } else if rightIndex == leftIndex {
            if element > sortedArray[rightIndex] {
                resultArray.insert(element, atIndex: rightIndex + 1)
                return resultArray
            } else if element < sortedArray[leftIndex] {
                resultArray.insert(element, atIndex: rightIndex - 1)
                return resultArray
            }
            
        }
        
    }
}

print(findElemInSortedArray([1], element: 3))
print(findElemIndex([1], element: 1))
print(insertElement([4, 5], element: 3))





