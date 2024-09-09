//
//  messengerApp.swift
//  messenger
//
//  Created by Ujjwal Arora on 09/09/24.
//
//


import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@main
struct YourApp: App {
  // register app delegate for Firebase setup
  @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
  var body: some Scene {
    WindowGroup {
      NavigationStack {
        LogInView()
      }
    }
  }
}
//lets try now

//try and change it to again this as i dont know delegates
//import SwiftUI
//import Firebase
//
//@main
//struct messengerApp: App {
//    init() {
//        FirebaseApp.configure()
//    }
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//        }
//    }
//}
