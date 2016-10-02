//: Playground - noun: a place where people can play

import UIKit

/////////////////   FIND    O(logN)     //////////

func findElemInSortedArray(sortedArray:[Int], element: Int) -> Bool {
    
    if sortedArray.count == 0 {
        return false
    }
    
    let middle = sortedArray[sortedArray.count / 2]
    if middle == element {
        return true
    } else if middle > element {
        return findElemInSortedArray(sortedArray: Array(sortedArray[0..<sortedArray.count/2]), element: element)
    } else {
        return findElemInSortedArray(sortedArray: Array(sortedArray[sortedArray.count/2 + 1..<sortedArray.count]), element: element)
    }
}

/////////////////   FIND    O(logN)     //////////

func findElemIndex(sortedArray:[Int], element: Int) -> Int {
    
    if sortedArray.count == 0 {
        return -1
    }
    
    let middle = sortedArray[sortedArray.count / 2]
    if middle == element {
        return sortedArray.count / 2
    } else if middle > element {
        return findElemIndex(sortedArray: Array(sortedArray[0..<sortedArray.count/2]), element: element)
    } else {
        return findElemIndex(sortedArray: Array(sortedArray[sortedArray.count/2 + 1..<sortedArray.count]), element: element)
    }
}

/////////////////   INSERT    O(logN)     //////////


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
            resultArray.insert(element, at: rightIndex)
            return resultArray
        } else if rightIndex == leftIndex {
            if element > sortedArray[rightIndex] {
                resultArray.insert(element, at: rightIndex + 1)
                return resultArray
            } else if element < sortedArray[leftIndex] {
                resultArray.insert(element, at
                    : rightIndex - 1)
                return resultArray
            }
            
        }
        
        
    }
}

print(findElemInSortedArray(sortedArray: [1], element: 3))
print(findElemIndex(sortedArray: [1], element: 1))
print(insertElement(sortedArray: [4, 5], element: 3))





