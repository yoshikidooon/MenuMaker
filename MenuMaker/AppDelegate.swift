//
//  AppDelegate.swift
//  MenuMaker
//
//  Created by 藤田佳己 on 2020/05/16.
//  Copyright © 2020 Fujita Fujimon. All rights reserved.
//

import UIKit

@UIApplicationMain
   class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //アプリ起動時の画面表示時間
        sleep(UInt32(1.5))
        
        //初回起動時に表示する
       let ud = UserDefaults.standard
        let firstLunchKey = "firstLunch"
        let firstLunch = [firstLunchKey: true]
        ud.register(defaults: firstLunch)

        
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

