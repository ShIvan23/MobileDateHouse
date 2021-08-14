//
//  AppDelegate.swift
//  MobileDateHouse
//
//  Created by Ivan on 14.08.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = PhoneListViewController()
        window?.makeKeyAndVisible()
        return true
    }
}

