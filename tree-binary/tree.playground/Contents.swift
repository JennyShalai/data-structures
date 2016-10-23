


/////////////////////////////////////////////////////////////////////
////////////////////       NODE      ////////////////////////////////
/////////////////////////////////////////////////////////////////////

class Node: CustomStringConvertible {
    
    var value: Int
    var leftChild: Node?
    var rightChild: Node?
    var parent: Node?
    var description: String {
        return "Node[\(self.value)]"
    }
    
    init(value: Int){
        self.value = value
    }
    
    
    
}

