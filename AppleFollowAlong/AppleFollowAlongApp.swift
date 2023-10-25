//
//  AppleFollowAlongApp.swift
//  AppleFollowAlong
//
//  Created by Abdisatar Mohamed on 03/09/2023.
//

import SwiftUI

@main

struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()


    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
