// Stack

enum Fruit {
    case Melon
    case Apple
    case Lemon
}

public struct Stack<T> {

    private var array = [T]()
    
    public var count: Int {
        return array.count
    }
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public mutating func push(element: T) {
        array.append(element)
    }
    
    public mutating func pop() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeLast() // last in first out
        }
    }
    
    public func peek() -> T? {
        return array.last
    }
}


var stackOfFluit = Stack<Fruit>()
stackOfFluit = Stack(array: [.Apple, .Lemon, .Melon])
print(stackOfFluit)
stackOfFluit.array
stackOfFluit.pop()
stackOfFluit.array
stackOfFluit.push(.Lemon)

stackOfFluit.peek()
stackOfFluit.isEmpty