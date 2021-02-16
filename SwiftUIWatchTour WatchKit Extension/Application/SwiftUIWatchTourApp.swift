//
//  SwiftUIWatchTourApp.swift
//  SwiftUIWatchTour WatchKit Extension
//
//  Created by newtan on 2021-02-15.
//

import SwiftUI

@main
struct SwiftUIWatchTourApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
