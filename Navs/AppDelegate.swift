//
//  AppDelegate.swift
//  Navs
//
//  Created by leslie on 3/16/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    //View controllers managed by a Navigation Controller fulfill a common purpose
        //and therefore they frequently share common data.
    //When working with Navigation Controllers,
        //we should not send information from one view controller to another,
        //as we did with single view controllers,
        //but instead create a unique source of data.
    //The most frequently used object to store common data is the AppDelegate object.
    //The advantage presented by this object is that
        //it is the delegate of the UIApplication object created to run the application
        //and therefore it is accessible from anywhere in the code.
    
    var pictureList: [String]!
    var ratings: [Int]!
    var selectedPicture: Int!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        //init data
        pictureList = ["Husky", "Door"]
        ratings = [0, 0]
        selectedPicture = 0
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

