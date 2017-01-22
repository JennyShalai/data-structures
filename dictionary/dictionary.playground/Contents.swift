// swift 3: dictionary (hash table)


// creat
var dictionaryCreation = [String: Int]()
var dictOtherWayCreation: [String: Int] = [:]

// add
dictionaryCreation["one"] = 1
print(dictionaryCreation)   // ["one": 1]


// read
if let one = dictionaryCreation["one"] {
    print(one)  // 1
}


// modefy
if dictionaryCreation["one"] != nil {
    dictionaryCreation["one"]! += 1
}
print(dictionaryCreation)   // ["one": 2]


// delete
dictionaryCreation["one"] = nil
print(dictionaryCreation)   // [:]



