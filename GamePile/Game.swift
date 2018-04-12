//
//  Game.swift
//  DoIt
//
//  Created by William Beutel on 4/11/18.
//  Copyright © 2018 Andrew Beutel. All rights reserved.
//

import Foundation

class Game {
    var name : String = ""
    var plays : [PlayRecord] = []
    
    func rating() -> Double {
        // if game has recorded plays, find rating to return, otherwise, return 0.0
        var rating = 0.0
        for play in plays {
            if let p_rate = play.playRating {
                rating = rating + p_rate
            }
        }
        if plays.count > 0 {
            rating = rating / Double(plays.count)
        }
        return rating
    }
}
