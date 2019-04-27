//
//  AppDelegate.swift
//  MGBrowserKit
//
//  Created by AldoOS on 03/11/2019.
//  Copyright (c) 2019 AldoOS. All rights reserved.
//

import UIKit
import MGBrowserKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, MGBrowserControllerDataSource, MGBrowserControllerDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
                
        let controller = MGBrowserController.instance
        controller.assets = Asset.assets
        controller.dataSource = self
        controller.delegate = self

        window?.rootViewController = UINavigationController(rootViewController: controller)
        window?.makeKeyAndVisible()

        return true
    }
    
    func leftBarButtonItems(_ controller: UIViewController) -> [UIBarButtonItem] {
        let button1 = UIBarButtonItem()
        button1.image = #imageLiteral(resourceName: "menu")
        button1.style = .plain
        button1.accessibilityIdentifier = "First"
        
        let button2 = UIBarButtonItem()
        button2.image = #imageLiteral(resourceName: "menu")
        button2.style = .plain
        button2.accessibilityIdentifier = "Second"

        return [button1, button2]
    }
    
    func toolBarButtonItems(_ controller: UIViewController) -> [UIBarButtonItem] {
        let button1 = UIBarButtonItem()
        button1.image = #imageLiteral(resourceName: "menu")
        button1.style = .plain
        button1.accessibilityIdentifier = "BACK"
        return [button1]
    }
    
    func browserController(_ controller: UIViewController, didTapBarButtonItem barButtonItem: UIBarButtonItem) {
        print("Navigation item is: \(String(describing: barButtonItem.accessibilityIdentifier))")
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

}

