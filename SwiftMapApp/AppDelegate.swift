//
//  AppDelegate.swift
//  SwiftMapApp
//
//  Created by HungNV on 11/3/20.
//  Copyright 2017 FUJITSU CLOUD TECHNOLOGIES LIMITED All Rights Reserved.
//

import UIKit
import NCMB
import GoogleMaps

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    // mBaaS APIkey
    let applicationkey = "YOUR_NCMB_APPLICATIONKEY"
    let clientkey      = "YOUR_NCMB_CLIENTKEY"
    
    // Google Maps APIkey
    let googleMapsAPIkey = "YOUR_GOOGLE_MAPS_APIKEY"
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // mBaaS初期化
        NCMB.setApplicationKey(applicationkey, clientKey: clientkey)
        
        // GoogleMaps初期化
        GMSServices.provideAPIKey(googleMapsAPIkey)
        
        return true
    }
}

