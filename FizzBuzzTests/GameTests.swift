//
//  GameTests.swift
//  FizzBuzz
//
//  Created by Mikel Balduciel on 23/8/16.
//  Copyright © 2016 Mikel Balduciel. All rights reserved.
//

import XCTest

@testable import FizzBuzz
class GameTests: XCTestCase {
    
    let game = Game()
    
    override func setUp() {
        super.setUp()
       
    }
    
    override func tearDown() {
        
        super.tearDown()
    }
    func testGameStartAtZero(){
        XCTAssertTrue(game.score == 0)
    }
    
    func testOnPlayScoreIncremented(){
        game.play("1")
        XCTAssertTrue(game.score == 1)
    }
    func testIfMoveIsRight(){
        game.score = 2
        let result = game.play("Fizz")
        XCTAssertEqual(result, true)
    }
    func testIfMoveIsWrong(){
        game.score = 1
        let result = game.play("Fizz")
        XCTAssertEqual(result, false)
    }
    func testIfBuzzMoveIsRight(){
        game.score = 4
        let result = game.play("Buzz")
        XCTAssertEqual(result, true)
    }
    func testIfMoveBuzzIsWrong(){
        game.score = 1
        let result = game.play("Buzz")
        XCTAssertEqual(result, false)
    }
    func testIfFizzBuzzMoveIsRight(){
        game.score = 14
        let result = game.play("FizzBuzz")
        XCTAssertEqual(result, true)
    }
    func testIfFizzBuzzMoveIsWrong(){
        game.score = 1
        let result = game.play("FizzBuzz")
        XCTAssertEqual(result, false)
    }
    func testIfNumberMoveIsRight(){
        game.score = 1
        let result = game.play("2")
        XCTAssertEqual(result, true)
    }
    func testIfNumberMoveIsWrong(){
        game.score = 2
        let result = game.play("3")
        XCTAssertEqual(result, false)
    }
    func testIfMoveWrongScoreNotIncremented(){
        game.score = 1
        game.play("Fizz")
        XCTAssertEqual(game.score, 1)
    }
}
