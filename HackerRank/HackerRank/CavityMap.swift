//
//  CavityMap.swift
//  HackerRank
//
//  Created by Paul Solt on 2/1/20.
//  Copyright © 2020 Paul Solt. All rights reserved.
//

import Foundation

struct CavityMap {
    
    func isCavity(grid: [[Character]], x: Int, y: Int) -> Bool {
        grid[y][x] > grid[y - 1][x] &&
        grid[y][x] > grid[y][x + 1] &&
        grid[y][x] > grid[y + 1][x] &&
        grid[y][x] > grid[y][x - 1]
    }

    func to2DGrid(_ grid: [String]) -> [[Character]] {
        grid.map { Array(String($0)) }
    }

    func toOutputGrid(_ grid: [[Character]]) -> [String] {
        grid.map { String($0) }
    }

    // Complete the cavityMap function below.
    func cavityMap(grid: [String]) -> [String] {
        guard grid.count > 2 else { return grid }
        
        let grid = to2DGrid(grid) // read only, X's will break algorithm
        var output = grid
        for y in 1 ..< (grid.count - 1) {
            for x in 1 ..< (grid.count - 1) {
                if isCavity(grid: grid, x: x, y: y) {
                    output[y][x] = "X"
                }
            }
        }
        return toOutputGrid(output)
    }

    func printGrid(grid: [String]) {
        let n = grid.count
        for y in 0 ..< n {
            for x in 0 ..< n {
                let row = grid[y]
                let indicies = Array(row.indices)
                let digit = row[indicies[x]]
                print(digit, separator: "", terminator: "")
            }
            print()
        }
    }
}

//guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
//    else { fatalError("Bad input") }
//
//let grid: [String] = AnyIterator{ readLine() }.prefix(n).map {
//    $0
//}
//
//guard grid.count == n else { fatalError("Bad input") }
//
//let result = cavityMap(grid: grid)
//
//printGrid(grid: result)
//
