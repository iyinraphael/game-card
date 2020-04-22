//: [Previous](@previous)

import Foundation

enum Rank: Int {
    case ace = 1
    case two = 2
    case three = 3
    case four = 4
    case five = 5
    case six = 6
    case seven = 7
    case eight = 8
    case nine = 9
    case ten = 10
    case jack
    case queen
    case king
}


extension Rank: CustomStringConvertible {
    var description: String {
        switch self {
        case .ace:
            return "1"
        case .two:
            return "2"
        case .three:
            return "3"
        case .four:
            return "4"
        case .five:
            return "5"
        case .six:
            return "6"
        case .seven:
            return "7"
        case .eight:
            return "8"
        case .nine:
            return "9"
        case .ten:
            return "10"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
    
        }
    }
}


enum Suit: String {
    case hearts
    case diamonds
    case spades
    case clubs
}


struct Card {
    
    let suit: Suit
    let rank: Rank
}





//: [Next](@next)
