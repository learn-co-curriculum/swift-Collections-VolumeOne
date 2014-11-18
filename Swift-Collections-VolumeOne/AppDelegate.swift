//
//  AppDelegate.swift
//  Swift-Collections-VolumeOne
//
//  Created by Zachary Drossman on 11/10/14.
//  Copyright (c) 2014 Zachary Drossman. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        let newArray : [String] = ["Zach","Blake","Joe"]
        
        let collections = FISCollections()
        
        let sortedArray = collections.sortArrayAsc(newArray)
        
        println(sortedArray)
        
        let sortedArrayDesc = collections.sortArrayDesc(newArray)
        
        println(sortedArrayDesc)
        
        let swappedArray = collections.swapElements(newArray)
        
        println(swappedArray)
        
        let reversedArray = collections.reverseArray(newArray);
        
        println(reversedArray)
        
        let numericArray = [1,5,3,6,15,18,20]
        
        let greaterAndLessThan10Dictionary = collections.greaterAndLessThan10(numericArray)
        
        println(greaterAndLessThan10Dictionary)
        
        let nameDictionary = ["Zach":"winner","Joe":"loser","Blake":"Winner"]
        
        let winnerArray = collections.findWinners(nameDictionary)
        
        println(winnerArray)
        
        let nameArray = ["Zach","Aaron","Adam","Blake"]
        
        var letaArray = collections.findA(nameArray)
        
        println(letaArray)
        
        var secondAArray = collections.findSecondA(nameArray)
        
        println (secondAArray)
        
        var integerResult = collections.sumArray(numericArray)
        
        println (integerResult)
        
        var withSArray = collections.addS(nameArray)
        
        println (withSArray)
        
        var paragraphString = "The fox jumped over the lazy dog and then went to the market. What the hell am I writing here?"
        
        var paragraphCountOfWordsDictionary = collections.countWordsIn(paragraphString)
        
        println(paragraphCountOfWordsDictionary)
        
        var songs = ["Radiohead - Creep", "Ben Folds Five - Best Imitation of Myself", "Radiohead - Fake Plastic Trees", "Ben Folds Five - Brick", "Blues Traveler - Run Around"]
        
        var songsByArtist = collections.organizeSongsByArtist(songs)
        
        println(songsByArtist)
        
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

