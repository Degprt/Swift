import UIKit

struct Journal {
    var name: String
    var mark: Int
}

extension Journal: CustomStringConvertible {
    var description : String {
        return "Name: \(name), Mark: \(mark)"
    }
}


struct queue <T> {
    private var elements: [T] = []
    
    public var isEmpty: Bool {
        return elements.count == 0
    }
    
    mutating func enqueue(element: T) {
        elements.append(element)
    }
    mutating func dequeue()->T {
        return elements.removeLast()
    }
    
    public var head: T? {
        if isEmpty {
            print("Массив пустой")
            return nil
        } else {
            print("Последний элемент \(elements.last!)")
            return elements.last
        }
    }
    
    public var front: T? {
        if isEmpty {
            print("Массив пустой")
            return nil
        } else {
            print("Первый элемент \(elements.first!)")
            return elements.first
        }
    }
    
    func printMyQueue() {
        print("Элементы \(elements)")
    }
}

extension queue {
    func myFilter(predicate:(T) -> Bool) -> [T] {
        var result = [T]()
        for i in elements {
            if predicate(i) {
                result.append(i)
            }
        }
        return result
    }
}

var pupil = queue<Journal>()
pupil.enqueue(element: .init(name: "Igor", mark: 4))
pupil.enqueue(element: .init(name: "Ylya", mark: 5))
pupil.enqueue(element: .init(name: "Olya", mark: 5))
pupil.enqueue(element: .init(name: "Jenya", mark: 3))
pupil.enqueue(element: .init(name: "Mikhail", mark: 4))
pupil.enqueue(element: .init(name: "Alexey", mark: 3))
pupil.enqueue(element: .init(name: "Vasya", mark: 4))
pupil.enqueue(element: .init(name: "Petya", mark: 3))

pupil.printMyQueue()
pupil.head
pupil.front

let honoursPupil = pupil.myFilter(predicate: {$0.mark == 3})
print(honoursPupil)
