//
//  AppDelegate.swift
//  Astro Stations
//
//  Created by rocketjeff on 5/6/20.
//  Copyright © 2020 Rocket Communucations Inc. All rights reserved.
//

import UIKit
import AstroSwiftFoundation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    // app wide settings, stored in UserDefaults
    private let alwaysDarkKey = "Always Dark"

    
    var alwaysDark : Bool {
        get {
            return UserDefaults.standard.bool(forKey: alwaysDarkKey)
        }
        set {
            UserDefaults.standard.set(newValue, forKey: alwaysDarkKey)
            if (newValue)
            {
                let scenes = UIApplication.shared.connectedScenes
                let windowScene = scenes.first as? UIWindowScene
                let window = windowScene?.windows.first
                window!.overrideUserInterfaceStyle = .dark
            }
            else
            {
                let scenes = UIApplication.shared.connectedScenes
                let windowScene = scenes.first as? UIWindowScene
                let window = windowScene?.windows.first
                window!.overrideUserInterfaceStyle = .unspecified
            }
        }
    }


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // initialize the Model singleton
        _ = TrackingStations()

        // set the first-install values for these settings
        UserDefaults.standard.register(defaults: [
            alwaysDarkKey:true
        ])
        
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

