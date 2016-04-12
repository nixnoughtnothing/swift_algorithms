/* Queue(FIFO / First in First Out)

Illustration of the design:

<----------------------------------- Queue ------------------------------------>

 item                    item                    item                    item
 ______                  ______                  ______                  ______
|last  |                |      |                |      |                |first |
|  A   |    older =>    |  B   |   older =>     |  C   |    older =>    |  D   |
|______|                |______|                |______|                |______|

added  -->  -->  -->  -->  -->  -->  -->  -->  -->  -->  --> -->  -->  --> removed

 */

public struct Queue<T> {
    
    private var array = [T]()
    
    public var count: Int {
        return array.count
    }
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public mutating func enqueue(element: T) {
        array.append(element)
    }
    
    public mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
    
    public func peek() -> T? {
        return array.last
    }
}


enum Animal {
    case Lion
    case Dog
    case Cat
}



var queueOfAnimals = Queue<Animal>()
queueOfAnimals = Queue(array: [.Lion, .Dog, .Cat])

queueOfAnimals.enqueue(.Dog)
print(queueOfAnimals.array)
queueOfAnimals.dequeue()
print(queueOfAnimals.array)
queueOfAnimals.isEmpty
queueOfAnimals.peek()


















