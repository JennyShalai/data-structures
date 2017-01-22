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


// main operations
print(Array(dictionaryCreation.keys))   // ["one", "three", "two"]
print(Array(dictionaryCreation.values)) // [1, 3, 2]
print(dictionaryCreation.isEmpty)       // true

dictionaryCreation = ["one": 1, "two": 2, "three": 3]




// loops - data in dict is not ordered so it will print out key-value pairs randomly every time we looping through dictionary

for (string, number) in dictionaryCreation {
    print("key: \(string), value:\(number)")
}
// key: one, value:1
// key: three, value:3
// key: two, value:2

for key in dictionaryCreation.keys {
    print(key)
}
// one
// three
// two

for value in dictionaryCreation.values {
    print(value)
}
// 1
// 3
// 2