//
//  AppDelegate.swift
//  SinchIM_wSwift
//
//  Created by Hugh A. Miles on 5/24/15.
//  Copyright (c) 2015 ph7. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, SINClientDelegate {

    var window: UIWindow?
    var client: SINClient?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    //Sinch - Delegate
    func createSinchClient(userId: String) {
        if client == nil {
            client = Sinch.clientWithApplicationKey("728f3ab4-a1d6-45d6-9db8-01a9003fb82e", applicationSecret: "4H4nXopLk0aMHqAmicusiA==", environmentHost: "sandbox.sinch.com", userId: userId)
            
            client!.setSupportCalling(true)
            client!.setSupportActiveConnectionInBackground(true)
            
            client!.delegate = self
            
            client!.start()
            client!.startListeningOnActiveConnection()
        }
    }
    
    func clientDidStart(client: SINClient) {
        println("client did start")
    }
    
    func clientDidStop(client: SINClient) {
        println("client did stop")
    }
    
    func clientDidFail(client: SINClient, error: NSError!) {
        NSLog("client did fail", error.description)
        let toast = UIAlertView(title: "Failed to start", message: error.description, delegate: nil, cancelButtonTitle: "OK")
        toast.show()
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

