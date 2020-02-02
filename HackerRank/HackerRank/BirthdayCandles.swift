//
//  BirthdayCandles.swift
//  CodeChallenges
//
//  Created by Paul Solt on 2/1/20.
//  Copyright © 2020 Paul Solt. All rights reserved.
//

import Foundation

// Complete the birthdayCakeCandles function below.
func birthdayCakeCandles(ar: [Int]) -> Int {

    // Option 1: sort, and then find largest and count backwards
    
    // Option 2: find max, keep track of max height occurances
    
    var tallestCandle = 0
    var count = 0
    
    // reset count any time we find a taller candle back to 1
    
    for candle in ar {
        if candle > tallestCandle {
            tallestCandle = candle
            count = 1
        } else if candle == tallestCandle {
            count += 1
        }
    }
    return count
}

// ~11 minutes (SET needs to count up)


//guard let arCount = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
//else { fatalError("Bad input") }
//
//guard let arTemp = readLine() else { fatalError("Bad input") }
//let ar: [Int] = arTemp.split(separator: " ").map {
//    if let arItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
//        return arItem
//    } else { fatalError("Bad input") }
//}
//
//guard ar.count == arCount else { fatalError("Bad input") }
//
//let result = birthdayCakeCandles(ar: ar)
//
//print(result)
