//
//  FISCollections.swift
//  swift-collectionsVolumeOne
//
//  Created by Zachary Drossman on 11/10/14.
//  Copyright (c) 2014 Zachary Drossman. All rights reserved.
//

import UIKit

class FISCollections {
    
    func sortArrayAsc (baseArray: [Int]) -> [Int] {
        return baseArray.sorted{ $0 < $1 }
    }
    
    
    func sortArrayDesc (baseArray: [Int]) -> [Int] {
        return baseArray.sorted{ $1 < $0 }
    }
    
    
    func swapElements (baseArray: [String]) -> [String] {
        var newArray = baseArray;
        swap(&newArray[1], &newArray[2])
        return newArray
    }
    
    
    func reverseArray (baseArray: [String]) -> [String] {
        var newArray = baseArray
        var reversedArray = reverse(newArray)
        return reversedArray
    }
    
    
    func keshaMaker (baseArray: [String]) -> [String] {
        var newArray = baseArray
        newArray[2] = "$"
        return newArray
    }
    
    
    func greaterAndLessThan10 (baseArray: [Int]) -> [String : [Int]] {
        
        var lessThan10Array = [Int]()
        var greaterThan10Array = [Int]()
        
        for integer in baseArray {
            if integer < 10 {
                lessThan10Array.append(integer)
            }
            else if integer > 10 {
                greaterThan10Array.append(integer)
            }
        }
        
        return ["greater_than_10": greaterThan10Array, "less_than_10": lessThan10Array]
    }
    
    
    func findWinners (baseDictionary : [String: String]) -> [String] {
        
        var winnerArray = [String]()
        
        for (name, winnerness) in baseDictionary {
            if winnerness == "winner" {
                winnerArray.append(name)
            }
        }
        
        return winnerArray
    }
    
    
    func findA (baseArray: [String]) -> [String] {
        
        var aArray = [String]()
    
        aArray = baseArray.filter{ $0.hasPrefix("A")}
        
        return aArray
    }
    
    
    func findSecondA (baseArray: [String]) -> [String] {
        
        var aArray = [String]()
        
        aArray = baseArray.filter{
            
            var answer = false
            var counter = 0
            
            for character in $0 {
                
                if (counter == 1) {
                    if character == "a" {
                        answer = true
                    }
                }
                
                counter++
            }
            
            return answer
            
        }
        
        return aArray
    }
    
    
    func sumArray (baseArray: [Int]) -> Int {
        
        let intResult = baseArray.reduce(0){$0 + $1}
        
        return intResult
    }
    
    
    func addS (baseArray: [String]) -> [String] {
        
        var pluralArray = baseArray
        var counter = 0
        
        for string in pluralArray {
            if counter != 1 {
                pluralArray[counter] = string + "s";
            }
            
            counter++
        }
        
        
        return pluralArray
    }
    
    func countWordsIn (story: String) -> [String : Int] {
        
        let wordsArray = split(story, {$0 == " "}, maxSplit: Int.max, allowEmptySlices: false)
    
        var wordCountDictionary = [String:Int]()
        
        for word in wordsArray {
            if let value = wordCountDictionary[word] {
                wordCountDictionary[word] = value + 1
            }
            else {
                wordCountDictionary[word] = 1
            }
        }
        
        return wordCountDictionary
    }
    
    func organizeSongsByArtist(songArray: [String]) -> [String: [String]] {
        
        var songsByArtistDictionary = [String: [String]]()
        
        for song in songArray {
            
            let modifiedSong = song.stringByReplacingOccurrencesOfString(" - ", withString: ";", options: nil, range:nil)
            let songArtistArray = split(modifiedSong, {$0 == ";"}, maxSplit: Int.max, allowEmptySlices:false)
            
            if var tempArray = songsByArtistDictionary[songArtistArray[0]] {
            songsByArtistDictionary[songArtistArray[0]]?.append(songArtistArray[1])
            }
            else {
                songsByArtistDictionary[songArtistArray[0]] = [songArtistArray[1]]
            }
        }
        return songsByArtistDictionary
    }
}
