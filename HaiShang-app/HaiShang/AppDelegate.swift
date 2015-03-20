//
//  AppDelegate.swift
//  HaiShang
//
//  Created by mAir on 2015/2/26.
//  Copyright (c) 2015年 mithvv. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        AVOSCloud.setApplicationId("21yqrg9kr23tc3bk9tiyz0wj359rs2ft7xmvhbyc4xn9k9ye"
, clientKey: "p8uiycu2dalaj6t4houzu09i58fly6fsqtri04x3h4hr470u")
        
        AVAnalytics.trackAppOpenedWithLaunchOptions(launchOptions)
        
        let settings : UIUserNotificationSettings = UIUserNotificationSettings(forTypes: UIUserNotificationType.Alert | UIUserNotificationType.Badge | UIUserNotificationType.Sound, categories: nil)
        
        application.registerUserNotificationSettings(settings)
        application.registerForRemoteNotifications()

        
        self.window?.makeKeyAndVisible()
        
        
        if (HSUserProvider.sharedInstance.hasLogin() == false) {
            
            delay(0.1, { () -> () in
                let loginNav : UINavigationController = UIStoryboard(name: "Login", bundle: nil).instantiateInitialViewController() as UINavigationController
                self.window?.rootViewController?.presentViewController(loginNav, animated: false, completion:nil)
            })
        }
        
        return true
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

    
    func application(application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: NSData)
    {
        let avInstallation : AVInstallation = AVInstallation.currentInstallation()
        avInstallation.setDeviceTokenFromData(deviceToken)
        avInstallation.saveInBackground()
    }

}

