//
//  BrainTests.swift
//  FizzBuzz
//
//  Created by Mikel Balduciel on 23/8/16.
//  Copyright © 2016 Mikel Balduciel. All rights reserved.
//

import XCTest
@testable import FizzBuzz
class BrainTests: XCTestCase {
    let brain = Brain()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testIsDivisibleByThree() {
        
        let result = brain.isDivisibleByThree(3)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByThree() {
        
        let result = brain.isDivisibleByThree(1)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFive() {
       
        let result = brain.isDivisibleByFive(5)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByFive() {
        
        let result = brain.isDivisibleByFive(1)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFiveteen() {
        
        let result = brain.isDivisibleByFifteen(15)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByFiveteen() {
        
        let result = brain.isDivisibleByFifteen(1)
        XCTAssertEqual(result, false)
    }
    
    func testSayFizz(){
        let result = brain.check(3)
        XCTAssertEqual(result, "Fizz")
    }
    func testSayBuzz(){
        let result = brain.check(5)
        XCTAssertEqual(result, "Buzz")
    }
    func testSayFizzBuzz(){
        let result = brain.check(15)
        XCTAssertEqual(result, "FizzBuzz")
    }
    func testSayNumber(){
        let result = brain.check(1)
        XCTAssertEqual(result, "1")
    }

}
