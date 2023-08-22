//
//  Counter.swift
//  CountCoins
//
//  Created by Matheus Sanada on 22/08/23.
//

import Foundation

struct Counter {
    private let currency = [100, 50, 25, 10, 5, 1]

    func coins(value: Int) -> [Int] {
        var counter = 0
        var actual = value
        var result: [Int] = []
        
        currency.forEach { currency in
            let currencyCounter = (actual / currency)
            result.append(currencyCounter)
            counter += currencyCounter
            
            let result = Int(actual % currency)
            actual = result
        }
        
        result.insert(counter, at: 0)
        
        return result
    }
}
