//
//  AppDelegate.swift
//  TechnicalTest-Koombea
//
//  Created by Jonathan Pacheco on 1/17/16.
//  Copyright © 2016 Jonathan Pacheco. All rights reserved.
//

import UIKit
import Log

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        self.initialConfiguration()
        return true
    }
    
    private func initialConfiguration() {
        Log.customConfiguration()
        R.assertValid()
    }
}

