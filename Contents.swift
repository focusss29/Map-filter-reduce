extension Array {
    func myMap<T>(_ operation: (Element) -> T) -> [T] {
        var resultArray = [T]()
        for item in self {
            resultArray.append(operation(item))
        }
        return resultArray
    }
    func myFilter(_ operation: (Element) -> Bool) -> [Element] {
        var newArray = [Element]()
        for item in self {
            if operation(item) {   // проверка на true - false
                newArray.append(item)
            }
        }
        return newArray
    }
    func myReduce<T>(_ value: T,_ operation: (T, Element) -> T) -> T{
        var result = value    // начальное значение
        for item in self {
            result = operation(result, item)
        }
        return result
    }
}

var numbers = [1, 4, 5, 10, 75]
numbers.myMap({ $0 * $0 })
numbers.myFilter({ $0 % 2 == 0 })
numbers.myReduce(0) { $0 + $1 }

