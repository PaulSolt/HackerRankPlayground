//
//  MilitaryTime.swift
//  CodeChallenges
//
//  Created by Paul Solt on 2/1/20.
//  Copyright © 2020 Paul Solt. All rights reserved.
//

import Foundation

enum TimeError: Error {
    case InvalidTimeFormat(_ message: String)
}

// hh:mm:ssAM or hh:mm:ssPM -> HH:mm:ss

// Complete the timeConversion function below.
func timeConversion2(s: String) -> String {
    print("Input: \(s)")
    let components = s.split(separator: ":")
    
    guard components.count == 3 else {
        fatalError("Expected 3 components with time in format: hh:mm:ssAM")
    }
    guard let hours = Int(components[0]) else {
        fatalError("Expected hours in format: hh:, found: \(components[0])")
    }
    guard let minutes = Int(components[1]) else {
        fatalError("Expected minutes in format: hh:mm, found: \(components[1])")
    }
    guard let seconds = Int(components[2].dropLast(2)) else {
        fatalError("Expected seconds in format: hh:mm:ss, found: \(components[2])")
    }
    
//    guard let hours = Int(components[0]),
//        let minutes = Int(components[1]),
//        let seconds = Int(components[2].dropLast(2))
//        else { fatalError("Invalid format: hh:mm:ssAM expected: \(s)") }

    var militaryHours = hours
    let amPM = String(components[2].dropFirst(2))
    if amPM == "PM" && hours != 12{
        militaryHours += 12
    } else if amPM == "AM" && hours == 12 {
        militaryHours = 0
    }
    
    let output = String(format: "%02i:%02i:%02i", militaryHours, minutes, seconds)
    return output
}

func convert(time: String) throws -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "hh:mm:ssa"
    guard let date = dateFormatter.date(from: time) else {
        throw TimeError.InvalidTimeFormat("Invalid date format: hh:mm:ssa")
    }
    dateFormatter.dateFormat = "HH:mm:ss"
    return dateFormatter.string(from: date)
}

// Helper methods

func cleanString(_ string: String) -> String {
    var string = string
    string.removeAll { (c) -> Bool in
        return !(c.isNumber || c.isLetter || c.isPunctuation)
    }
    return string
}

func cleanString2(_ string: String) -> String {
    let invalidCharacters = CharacterSet.alphanumerics.union(.punctuationCharacters).inverted
    var string = string
    string.removeAll {
        guard let c = UnicodeScalar(String($0)) else { return true } // if it's not valid, remove it?
        return invalidCharacters.contains(c)
    }
    return string
}

func cleanReadLine() -> String {
    guard let input = readLine() else { fatalError("Bad Terminal Input") }
    return cleanString(input)
}

//repeat {
//    let input = cleanReadLine()
//
//    do {
//        print("input:|\(input)|")
////        let result = timeConversion(s: input)
//
//        let result = try convert(time: input)
//        print(result)
//    } catch {
//        print("Invalid input: hh:mm:ssAM format expected")
//    }
//} while (true)
