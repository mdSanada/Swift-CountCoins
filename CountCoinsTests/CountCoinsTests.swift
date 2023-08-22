//
//  CountCoinsTests.swift
//  CountCoinsTests
//
//  Created by Matheus Sanada on 22/08/23.
//

import XCTest
@testable import CountCoins

final class CountCoinsTests: XCTestCase {
    let counter = Counter()
    /*
     RESULTADO FORMADO POR ESSA SEQUENCIA
     [
      INT(COUNT),
      INT(1 REAL),
      INT(50 CENTAVOS),
      INT(25 CENTAVOS),
      INT(10 CENTAVOS),
      INT(05 CENTAVOS),
      INT(01 CENTAVOS)
     ]
     */
    
    func testCount_80() {
        let value = 80
        let output = [3,
                      0,
                      1,
                      1,
                      0,
                      1,
                      0]
        var testCounter: [Int] = []

        self.measure {
            let result = counter.coins(value: value)
            testCounter = result
            XCTAssertEqual(result, output)
        }
        
        let total = testCounter.removeFirst()
        let sum = testCounter.reduce(0, +)
        XCTAssertEqual(sum, total)
    }
    
    func testCount_999() {
        let value = 999
        let output = [17,
                      9,
                      1,
                      1,
                      2,
                      0,
                      4]
        var testCounter: [Int] = []

        self.measure {
            let result = counter.coins(value: value)
            testCounter = result
            XCTAssertEqual(result, output)
        }
        
        let total = testCounter.removeFirst()
        let sum = testCounter.reduce(0, +)
        XCTAssertEqual(sum, total)
    }

    func testCount_BRUTE_FORCE() {
        let value = Int.max
        let output = [92233720368547761,
                      92233720368547758,
                      0,
                      0,
                      0,
                      1,
                      2]
        var testCounter: [Int] = []

        self.measure {
            let result = counter.coins(value: value)
            testCounter = result
            XCTAssertEqual(result, output)
        }
        
        let total = testCounter.removeFirst()
        let sum = testCounter.reduce(0, +)
        XCTAssertEqual(sum, total)
    }

}
