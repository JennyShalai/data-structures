
/////////////////   FIND    O(logN)     //////////

func findElemInSortedArray(sortedArray:[Int], element: Int) -> Bool {
    
    if sortedArray.count == 0 {
        return false
    }
    
    let middle = sortedArray[sortedArray.count / 2]
    if middle == element {
        return true
    } else if middle > element {
        let subArray = Array(sortedArray[0..<sortedArray.count/2])
        return findElemInSortedArray(sortedArray: subArray, element: element)
    } else {
        let subArray = Array(sortedArray[sortedArray.count/2 + 1..<sortedArray.count])
        return findElemInSortedArray(sortedArray: subArray, element: element)
    }
}

print(findElemInSortedArray(sortedArray: [1,3,5], element: 4))  // false
print(findElemInSortedArray(sortedArray: [1,3,5], element: 1))  // true


/////////////////   FIND    O(logN)     //////////

func findElemIndex(sortedArray:[Int], element: Int) -> Int {
    
    if sortedArray.count == 0 {
        return -1
    }
    
    let middle = sortedArray[sortedArray.count / 2]
    if middle == element {
        return sortedArray.count / 2
    } else if middle > element {
        let subArray = Array(sortedArray[0..<sortedArray.count/2])
        return findElemIndex(sortedArray: subArray, element: element)
    } else {
        let subArray = Array(sortedArray[sortedArray.count/2 + 1..<sortedArray.count])
        return findElemIndex(sortedArray: subArray, element: element)
    }
}

print(findElemIndex(sortedArray: [1,4,6], element: 1))  // 0
print(findElemIndex(sortedArray: [1,4,6], element: 4))  // 1
print(findElemIndex(sortedArray: [1,4,6], element: 5))  // -1


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







