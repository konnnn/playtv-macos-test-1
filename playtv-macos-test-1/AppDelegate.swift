//
//  AppDelegate.swift
//  playtv-macos-test-1
//
//  Created by Evgeny Konkin on 13.04.2019.
//  Copyright © 2019 Evgeny Konkin. All rights reserved.
//

import Cocoa
import RealmSwift

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        print("\n\nApp: applicationDidFinishLaunching\n\n")
        
        do {
            _ = try Realm()
        } catch {
            print("Error initialising new realm, \(error)")
        }
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
        print("\n\nApp: applicationWillTerminate\n\n")
    }


}

