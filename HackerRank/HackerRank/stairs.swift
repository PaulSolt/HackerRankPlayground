//
//  main.swift
//  CodeChallenges
//
//  Created by Paul Solt on 1/31/20.
//  Copyright © 2020 Paul Solt. All rights reserved.
//

import Foundation


// Complete the staircase function below.
func staircase(n: Int) -> Void {

    var spaceCount = n - 1
    for _ in 0..<n {
        let spaces = String.init(repeating: " ", count: spaceCount)
        let hashes = String.init(repeating: "#", count: n - spaceCount)
        print("\(spaces)\(hashes)")
        spaceCount -= 1
    }
    

}

//guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
//else { fatalError("Bad input") }
//
//staircase(n: n)
