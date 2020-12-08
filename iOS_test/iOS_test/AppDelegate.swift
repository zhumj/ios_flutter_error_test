//
//  AppDelegate.swift
//  iOS_test
//
//  Created by admin on 2020/12/8.
//

import UIKit
import Flutter
import FlutterPluginRegistrant

@main
class AppDelegate: FlutterAppDelegate {

    lazy var flutterEngine = FlutterEngine(name: "my flutter engine")

    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        flutterEngine.run();
        GeneratedPluginRegistrant.register(with: self.flutterEngine);
        
        window =  UIWindow(frame: UIScreen.main.bounds)
        
        // error
        window?.rootViewController = UINavigationController(rootViewController: ViewController())
        // correct
//        window?.rootViewController = ViewController()
        
        window?.backgroundColor = UIColor.white
        window?.makeKeyAndVisible()
        
        return super.application(application, didFinishLaunchingWithOptions: launchOptions);
    }

}

