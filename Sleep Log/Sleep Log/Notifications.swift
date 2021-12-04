//  Reminder Functionality
//  Notifications.swift File
//  Created by James Haville from GitHub
//  https://github.com/jhaville/LocalNotificationsSampleApp
//  Modified by: Abdullah Alenezi - Hamad Alrashdi - Hussain Atwain

import SwiftUI

struct Notifications: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                NotificationListView()
            }
            .accentColor(.primary)
        }
    }
}

