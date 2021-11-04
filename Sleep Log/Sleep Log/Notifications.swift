//
//  Notifications.swift
//  Sleep Log
//
//  Created by Hussain Atwain on 11/4/21.
//

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

