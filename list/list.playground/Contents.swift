


//    var testLoop: IntegerNode? = nil
//    while testLoop != nil {
//        testLoop = testLoop?.nextNode as! IntegerNode?
//    }


import UIKit

class Node<T> : CustomStringConvertible {
    var value: T
    var nextNode: Node<T>?
    
    init(value: T) {
        self.value = value;
    }
    
    var description: String {
        if nextNode != nil {
            return "(\(value)) -> \(nextNode!)"
        } else {
            return "(\(value)) -> \(nextNode)"
        }
    }
}

//class StringNode: Node<String> {}
class IntegerNode: Node<Int> {}

// Recursive copying
extension IntegerNode {
    func copy() -> IntegerNode {
        let result: IntegerNode = IntegerNode.init(value: self.value)
        result.nextNode = (self.nextNode as? IntegerNode)?.copy()
        return result
    }
}





// Returns a copy of the original list
func filterList(head: IntegerNode, m: Int, n: Int) -> IntegerNode? {
    
    // make a copy of input list
    let head: IntegerNode = head.copy()
    
    var deleting: Bool = false
    var currentNode: IntegerNode = head
    var counter: Int = 0
    var stableNode: IntegerNode = head
    
    if m == 0 && n == 0 {
        return head
    } else if m == 0 {
        return nil
    } else if n == 0 {
        return head
    }
    
    while currentNode.nextNode != nil {
        counter += 1
        
        if deleting {
            if counter == n {
                deleting = false
                counter = 0
                stableNode.nextNode = currentNode.nextNode
            }
        } else {
            if counter == m {
                deleting = true
                stableNode = currentNode
                counter = 0
            }
        }
        currentNode = currentNode.nextNode as! IntegerNode
    }
    
    // if last element has to be deleted - treat it separately
    if deleting {
        stableNode.nextNode = nil
    }
    
    return head
}


// forming test data
var integerList: IntegerNode = IntegerNode.init(value: 0)
var currentNode: IntegerNode? = integerList
for i in 1..<10 {
    currentNode!.nextNode = IntegerNode.init(value: i)
    currentNode = currentNode?.nextNode as! IntegerNode?
}


print(filterList(head: integerList, m: 0, n: 0))
// (0) -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> nil

print(filterList(head: integerList, m: 1, n: 0))
// (0) -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> nil

print(filterList(head: integerList, m: 0, n: 1))
// nil

print(filterList(head: integerList, m: 1, n: 1))
// (0) -> (2) -> (4) -> (6) -> (8) -> nil

print(filterList(head: integerList, m: 8, n: 10))
// (0) -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> nil


