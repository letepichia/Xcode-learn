//
//  SampleData.swift
//  Storyboard
//
//  Created by Eduardo Letepichia on 7/1/19.
//  Copyright © 2019 Eduardo Letepichia. All rights reserved.
//

import Foundation

final class SampleData {
    
    static func generatePlayersData() -> [Player] {
        return [
            Player(name: "Bill Evans", game: "Tic Tac Toe", rating: 5),
            Player(name: "Oscar Peterson", game: "Spin the Bottle", rating: 3),
            Player(name: "Dave Brubeck", game: "Texas Hold 'em Poker", rating: 2)
        ]
    }
}

