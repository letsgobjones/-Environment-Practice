//
//  EnvironmentPracticeApp.swift
//  EnvironmentPractice
//
//  Created by Brandon Jones on 6/19/24.
//

import SwiftUI

@main
struct EnvironmentPracticeApp: App {
  
  @State private var appState = AppState()
    var body: some Scene {
        WindowGroup {
            ContentView()
            .environment(appState)
        }
    }
}
