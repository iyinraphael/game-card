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
    
    static var allRanks: [Rank] {
        return [ace, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king]
    }
}


extension Rank: CustomStringConvertible, Comparable {
    static func < (lhs: Rank, rhs: Rank) -> Bool {
        return lhs == rhs && rhs == lhs
    }
    
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
    
    static var allsuit: [Suit]{
        return [hearts, diamonds, spades, clubs]
    }
}

struct Card {
    
    let suit: Suit
    let rank: Rank
}

extension Card: CustomStringConvertible {
    var description: String {
        return "\(rank) of \(suit)"
    }
}

struct Deck {
    var cardArray: [Card]
    
    init(cardArray: [Card]) {
        self.cardArray = cardArray
        for rank in Rank.allRanks {
            for suit in Suit.allsuit {
                let card = Card(suit: suit, rank: rank)
                self.cardArray.append(card)
            }
        }
    }
}

func drawCard() -> Card {
    let cardArray = [Card]()
    let deck =  Deck(cardArray: cardArray)
    
    let number = Int.random(in: 0...52)
    let card = deck.cardArray[number]
    
    return card
}

protocol CardGame {
    
    var deck: Deck {get}
    
    func play()
    
}

class HighLow: CardGame {
    var deck: Deck
    
    init(deck: Deck) {
        self.deck = deck
    }
    
    func play() {
        <#code#>
    }

    
    
}



//: [Next](@next)
