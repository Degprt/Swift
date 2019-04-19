import UIKit

var summa: Double = 100
var procent: Double = 10

for _ in 1...5 {
    summa += (summa * procent / 100);
    print(summa)
}
