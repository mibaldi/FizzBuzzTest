//
//  Game.swift
//  FizzBuzz
//
//  Created by Mikel Balduciel on 23/8/16.
//  Copyright © 2016 Mikel Balduciel. All rights reserved.
//

import UIKit

class Game: NSObject {
    var score: Int
    let brain: Brain
    override init() {
        score = 0
        brain = Brain()
        super.init()
    }
    func play(move: String) -> Bool{
        
        
        let result = brain.check(score + 1)
        if result == move {
            score += 1
            return true
        }
        else{
           return false
        }
        
    }
}
