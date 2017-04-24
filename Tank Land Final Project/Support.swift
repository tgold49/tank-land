
import Foundation

struct Position: CustomStringConvertible {
    var row: Int
    var col: Int
    
    init(row: Int, col: Int) {
        self.row = row
        self.col = col
    }
    var description: String {
        return ("(\(row),\(col))")
    }
}


enum Direction {
    case north
    case south
    case west
    case east
    case northwest
    case northeast
    case southeast
    case southwest
}

func fitI(_ i: Int, _ size: Int, right: Bool = false) -> String {
    let iAsString = "\(i)"
    let newLength = iAsString.characters.count
    return fit(iAsString, newLength > size ? newLength : size, right: right)
    
}

func fit(_ s: String, _ size: Int, right: Bool = true) -> String {
    var result = ""
    let sSize = s.characters.count
    if sSize == size {
        return s
    }
    var count = 0
    if size < sSize {
        for c in s.characters {
            if count < size {
                result.append(c)
            }
            count += 1
        }
    }
    result = s
    var addon = ""
    let num = size - sSize
    for _ in 0 ..< num {
        addon.append(" ")
    }
    if right {
        return result + addon
    }
    return addon + result
}
