# Swift-CountCoins

## Coin Counter

The `Coin Counter` calculates the minimum number of coins needed to represent a given value using a set of currency denominations.

### Usage

The `Counter` struct exposes a method `coins(value: Int) -> [Int]` which takes an integer value as input and returns an array of integers representing the minimum number of coins needed, along with a counter indicating the total number of coins used.

```swift
import Foundation

let counter = Counter()
let value = 123

let coinCounts = counter.coins(value: value)

print("Value: \(value)")

let total = coinCounts.removeFirst()
print("Total Coins: \(total)")

for (index, count) in coinCounts.dropFirst().enumerated() {
    let currency = counter.currency[index]
    print("\(count) coins of \(currency)")
}
```

### Example

Suppose you want to calculate the minimum number of coins needed to represent the value 123 using the currency denominations [100, 50, 25, 10, 5, 1]. The output would look like:

```
Value: 123
Total Coins: 6
1 coins of 100
0 coins of 50
0 coins of 25
2 coins of 10
0 coins of 5
3 coins of 1
```
