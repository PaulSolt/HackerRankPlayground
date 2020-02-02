//
//  main.swift
//  CodeChallenges
//
//  Created by Paul Solt on 1/31/20.
//  Copyright © 2020 Paul Solt. All rights reserved.
//

import Foundation

import Foundation

// Complete the miniMaxSum function below.
func miniMaxSum(arr: [Int]) -> Void {

    let sortedNumbers = arr.sorted()
    
    var min = 0
    var max = 0
    
    for (index, num) in sortedNumbers.enumerated() {
        if index == 0 {
            min += num
        } else if index == arr.count - 1 {
            max += num
        } else {
            min += num
            max += num
        }
    }
    print("\(min) \(max)")
}

//guard let arrTemp = readLine() else { fatalError("Bad input") }
//let arr: [Int] = arrTemp.split(separator: " ").map {
//    if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
//        return arrItem
//    } else { fatalError("Bad input") }
//}
//
//guard arr.count == 5 else { fatalError("Bad input") }
//
//miniMaxSum(arr: arr)

// 9 minutes
