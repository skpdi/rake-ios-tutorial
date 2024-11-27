//
//  Untitled.swift
//  rake-ios-tutorial-SwiftUI
//
//  Created by 송혜영(Hyeyoung Song)/Data Infrastructure팀/SKP on 11/27/24.
//

import UIKit

class CustomAppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        Rake.sharedInstance(withToken: "your_rake_token", andUseDevServer: true)
        
        return true;
    }
}
