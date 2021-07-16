//
//  AppDelegate.swift
//  TKUi
//
//  Created by Shper on 2021/07/14.
//  Copyright © 2021 Shper. All rights reserved.
//

import UIKit
import TKLogger

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    static var shared: AppDelegate?
    var window: UIWindow?

    // MARK: - Lifecycle
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        AppDelegate.shared = self
        setupTKLogger()
        setupBootViewController()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }
    
    // MARK: - UI
    
    private func setupBootViewController() {
        let navigation = UINavigationController(rootViewController: RootViewController())
        navigation.setNavigationBarHidden(true, animated: false)
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = UIColor.white
        self.window?.rootViewController = navigation
        self.window?.makeKeyAndVisible()
    }

    // MARK: - Third-party SDK initialization
    
    private func setupTKLogger() {
        TKLogger.setup(tag: "TKUi_Example")
        TKLogger.addDestination(TKLogConsoleDestination())
    }

}

