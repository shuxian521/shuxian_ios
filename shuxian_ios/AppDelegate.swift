//
//  AppDelegate.swift
//  shuxian_ios
//
//  Created by SongLijun on 15/8/18.
//  Copyright © 2015年 itjh. All rights reserved.
//

import UIKit
import CoreData
import SwiftColor
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        //        // Change status bar style
        //        UIApplication.sharedApplication().statusBarStyle = .LightContent
        //        // Change navigation bar appearance
        //        UINavigationBar.appearance().barTintColor = Color(hexString: "#448F38")
        //
        //        //设置UINavigationBar title颜色，字体
        //        if let barFont = UIFont(name: "AvenirNextCondensed-DemiBold", size: 18.0) {
        //            UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName:Color(hexString: "#228B22"), NSFontAttributeName:barFont]
        //        }
        
        //设置3d touch
        
        //        UIApplicationShortcutIcon *firstItemIcon = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeAdd];
        //        UIMutableApplicationShortcutItem *firstItem = [[UIMutableApplicationShortcutItem alloc]initWithType:@"first" localizedTitle:@"第一个item" localizedSubtitle:nil icon:firstItemIcon userInfo:nil];
        
        let firstItemIcon:UIApplicationShortcutIcon = UIApplicationShortcutIcon()
        let firstItem = UIMutableApplicationShortcutItem(type: "1", localizedTitle: "我的订单", localizedSubtitle: nil, icon: firstItemIcon, userInfo: nil)
        
        
        application.shortcutItems = [firstItem]
        
        
        
        //设置TabBar 选中背景色
        UITabBar.appearance().tintColor = Color(hexString: "#228B22")
        
        
        //能够在ios桌面的程序icon右上角显示数字（badge number）
        UIApplication.sharedApplication().applicationIconBadgeNumber = 5
        
        return true
    }
    
    /**
    3D Touch 跳转
    
    - parameter application:       application
    - parameter shortcutItem:      item
    - parameter completionHandler: handler
    */
    func application(application: UIApplication, performActionForShortcutItem shortcutItem: UIApplicationShortcutItem, completionHandler: (Bool) -> Void) {
        
        let handledShortCutItem = handleShortCutItem(shortcutItem)
        completionHandler(handledShortCutItem)
        
    }
    
    
    func handleShortCutItem(shortcutItem: UIApplicationShortcutItem) -> Bool {
        var handled = false
        //Get type string from shortcutItem
        if shortcutItem.type == "1" {
         
            // My视图
            let storyMy = UIStoryboard(name: "My", bundle: nil)
            
            // 获取当前页面TabBar
            let tabBar = UIApplication.sharedApplication().keyWindow?.rootViewController as! UITabBarController
            
            // 获取当前TabBar Nav
            let nav = tabBar.selectedViewController as! UINavigationController
            // 订单列表页
            let myOrdersVC = storyMy.instantiateViewControllerWithIdentifier("myOrders")
            // 跳转
            nav.pushViewController(myOrdersVC, animated: true)
            
            
            handled = true
        }
        return handled
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
        // Saves changes in the application's managed object context before the application terminates.
        self.saveContext()
    }
    
    // MARK: - Core Data stack
    
    lazy var applicationDocumentsDirectory: NSURL = {
        // The directory the application uses to store the Core Data store file. This code uses a directory named "me.shuxian.shuxian_ios" in the application's documents Application Support directory.
        let urls = NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)
        return urls[urls.count-1]
        }()
    
    lazy var managedObjectModel: NSManagedObjectModel = {
        // The managed object model for the application. This property is not optional. It is a fatal error for the application not to be able to find and load its model.
        let modelURL = NSBundle.mainBundle().URLForResource("shuxian_ios", withExtension: "momd")!
        return NSManagedObjectModel(contentsOfURL: modelURL)!
        }()
    
    lazy var persistentStoreCoordinator: NSPersistentStoreCoordinator = {
        // The persistent store coordinator for the application. This implementation creates and returns a coordinator, having added the store for the application to it. This property is optional since there are legitimate error conditions that could cause the creation of the store to fail.
        // Create the coordinator and store
        let coordinator = NSPersistentStoreCoordinator(managedObjectModel: self.managedObjectModel)
        let url = self.applicationDocumentsDirectory.URLByAppendingPathComponent("SingleViewCoreData.sqlite")
        var failureReason = "There was an error creating or loading the application's saved data."
        do {
            try coordinator.addPersistentStoreWithType(NSSQLiteStoreType, configuration: nil, URL: url, options: nil)
        } catch {
            // Report any error we got.
            var dict = [String: AnyObject]()
            dict[NSLocalizedDescriptionKey] = "Failed to initialize the application's saved data"
            dict[NSLocalizedFailureReasonErrorKey] = failureReason
            
            dict[NSUnderlyingErrorKey] = error as NSError
            let wrappedError = NSError(domain: "YOUR_ERROR_DOMAIN", code: 9999, userInfo: dict)
            // Replace this with code to handle the error appropriately.
            // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            NSLog("Unresolved error \(wrappedError), \(wrappedError.userInfo)")
            abort()
        }
        
        return coordinator
        }()
    
    lazy var managedObjectContext: NSManagedObjectContext = {
        // Returns the managed object context for the application (which is already bound to the persistent store coordinator for the application.) This property is optional since there are legitimate error conditions that could cause the creation of the context to fail.
        let coordinator = self.persistentStoreCoordinator
        var managedObjectContext = NSManagedObjectContext(concurrencyType: .MainQueueConcurrencyType)
        managedObjectContext.persistentStoreCoordinator = coordinator
        return managedObjectContext
        }()
    
    // MARK: - Core Data Saving support
    
    func saveContext () {
        if managedObjectContext.hasChanges {
            do {
                try managedObjectContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                NSLog("Unresolved error \(nserror), \(nserror.userInfo)")
                abort()
            }
        }
    }
    
}

