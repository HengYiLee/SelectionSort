import Foundation

var words = [String]()

while let line = readLine() {
    words.append(line)
}

@discardableResult func selectionSort(_ array: [String]) -> [String] {
    guard array.count > 1 else { return array }
    var a = array
    var pass = 0
    var totalswaps = 0


    for x in 0 ..< a.count - 1 {
        var swap = 0
        var lowest = x

        for y in x + 1 ..< a.count {
            if a[y] < a[lowest] {
                lowest = y
            }
        }

        if x != lowest {
            a.swapAt(x, lowest)
        }

        pass += 1
        totalswaps += 1
        swap += 1

    }
    return a
}

print(selectionSort(words))
