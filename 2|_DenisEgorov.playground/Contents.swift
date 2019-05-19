import UIKit

import UIKit


//Задание 1
func div1 (value: Int) {
    let a1 = value
    let a2 = a1%2
    a2 == 0 ? print("четное") : print("нечетное")
}

div1(value: 3)


//Задание 2
func div2(value: Int) {
    let b1 = value
    let b2 = b1%3
    b2 == 0 ? print("Делится на 3") : print("Не делится на 3")
}

div2(value: 6)


//Задание 3
var array: [Int] = []

for i in 1...100 {
    array.append(i)
}


//Задание 4
for element in array where (element%2 == 0) || (element%3 == 0) {
    array.remove(at : (array.firstIndex(of: element)!))
}

print(array)


//Задание 5
func fibonacci (n: Int) -> (Decimal) {
    if (n<3) {
        return 1
    } else {
        var c1 : Decimal = 1, c2 : Decimal = 1, c:Decimal
        for _ in 3...n {
            c = c1+c2
            c1 = c2
            c2 = c
        }
        return c2
    }
}

var fibArray = [Decimal]()
fibArray.append(0)
var n  = 100
for i in 1...n {
    fibArray.append(fibonacci(n: i))
}
print(fibArray)


//Задание 6
func nat (num: Int) -> Bool {
    if num < 2 {
        return false
    }
    for i in 2..<num {
        if num % i == 0 {
            return false
        }
    }
    
    return true
}
func natArray () -> [Int] {
    var results = [Int]()
    var i = 2
    while results.count < 100 {
        if nat(num: i) {
            results.append(i)
        }
        i += 1
    }
    
    return results
}
print (natArray())
