//
//  AppDelegate.swift
//  LetsMeet
//
//  Created by Tianid on 13.11.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        configureAppStart()
        // Override point for customization after application launch.
        return true
    }
    
    private func configureAppStart() {
        let assembler = AssemberlModuleBuilder()
        let router = Router(assembler: assembler)
        let vc = router.initiateMainScreen()
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        
    }

}

